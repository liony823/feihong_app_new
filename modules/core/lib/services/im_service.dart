import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/models/channel/channel_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/common/options.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/model/wk_image_content.dart';
import 'package:wukongimfluttersdk/model/wk_video_content.dart';
import 'package:wukongimfluttersdk/model/wk_voice_content.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';
import 'package:vibration/vibration.dart';

part 'im_service.g.dart';

class IMState {
  UserCert? userCert;
  List<ChannelSimpleState> channelStatus;
  int lastMessageSeq;

  IMState({
    this.userCert,
    this.lastMessageSeq = 0,
    this.channelStatus = const [],
  });

  IMState copyWith({
    UserCert? userCert,
    int? lastMessageSeq,
    List<ChannelSimpleState>? channelStatus,
  }) {
    return IMState(
      userCert: userCert ?? this.userCert,
      lastMessageSeq: lastMessageSeq ?? this.lastMessageSeq,
      channelStatus: channelStatus ?? this.channelStatus,
    );
  }
}

/// IM服务类，处理与IM SDK的交互
@Riverpod(keepAlive: true)
class IMService extends _$IMService {
  AppCoreService get _appCoreService =>
      ref.watch(appCoreServiceProvider.notifier);
  FriendApplyController get _friendApplyController =>
      ref.read(friendApplyControllerProvider.notifier);
  ContactController get _contactController =>
      ref.read(contactControllerProvider.notifier);

  @override
  IMState build() {
    return IMState();
  }

  /// 初始化IM SDK
  Future<void> initialize(UserCert userCert) async {
    state.userCert = userCert;
    try {
      if (WKIM.shared.options.uid != null) {
        WKIM.shared.connectionManager.disconnect(true);
      }
      final cert = state.userCert;
      if (cert == null) {
        throw Exception('UserCert is null');
      }
      bool result =
          await WKIM.shared.setup(Options.newDefault(cert.uid, cert.token));
      // 配置连接信息
      final imRepository = ref.read(imRepositoryProvider);
      WKIM.shared.options.getAddr = (Function(String address) complete) async {
        final tcpAddress = await imRepository.getIMTCPAddress(cert.uid);
        complete(tcpAddress);
      };

      if (result) {
        // 连接服务器
        WKIM.shared.connectionManager.connect();

        // 设置消息监听器
        _registerMessageListeners();

        // 并行初始化联系人和会话服务
        await Future.wait([
          ref.read(contactControllerProvider.notifier).initialize(),
          ref.read(channelControllerProvider.notifier).initialize(),
        ]);
      }
      AppLogger.i('IM SDK初始化成功');
    } catch (e) {
      AppLogger.e('IM SDK初始化失败', e);
      rethrow;
    }
  }

  /// 注册消息监听器
  void _registerMessageListeners() {
    AppLogger.d("注册消息监听器");

    // 监听系统消息
    WKIM.shared.cmdManager.addOnCmdListener('sys_im', (wkcmd) async {
      final param = wkcmd.param;
      if (wkcmd.cmd == 'friendRequest') {
        // 处理好友申请

        _friendApplyController.addFriendApply(
          FriendApply(
            uid: param['apply_uid'],
            toUid: param['to_uid'],
            toName: param['apply_name'],
            status: FriendApplyStatus.apply,
            remark: param['remark'],
            token: param['token'],
          ),
        );
        _contactController.getUnreadFriendApplyCount();
        _playMessageSound();
      }
      if (wkcmd.cmd == 'friendAccept') {
        // 接受好友申请
        final toUID = param['to_uid'];
        final fromUID = param['from_uid'];
        if (!toUID || toUID == "") {
          return;
        }
        if (!Utils.isEmptyOrNull(fromUID)) {
          WKIM.shared.channelManager.fetchChannelInfo(
            fromUID,
            WKChannelType.personal,
          );
        }
        _contactController.syncContacts();
        final friendApplyState = ref.watch(friendApplyControllerProvider);
        final friendApplys = friendApplyState.value?.list ?? [];
        for (var apply in friendApplys) {
          if (apply.uid == toUID) {
            _friendApplyController.updateApplyStatus(
              apply,
              FriendApplyStatus.accepted,
            );
            break;
          }
        }
      }
      if (wkcmd.cmd == 'friendDeleted') {
        _contactController.syncContacts();
      }
      if (wkcmd.cmd == 'messageRevoke') {
        var channelID = wkcmd.param['channel_id'];
        var channelType = wkcmd.param['channel_type'];
        if (channelID != '') {
          // 同步消息扩展
          var maxVersion = await WKIM.shared.messageManager
              .getMaxExtraVersionWithChannel(channelID, channelType);
          // Apis.syncMsgExtra(channelID, channelType, maxVersion);
        }
      } else if (wkcmd.cmd == 'channelUpdate') {
        var channelID = wkcmd.param['channel_id'];
        var channelType = wkcmd.param['channel_type'];
        if (channelID != '') {
          if (channelType == WKChannelType.personal) {
            // 同步个人信息
            // Apis.getUserInfo(channelID);
          } else if (channelType == WKChannelType.group) {
            // 同步群信息
            // Apis.getGroupInfo(channelID);
          }
        }
      } else if (wkcmd.cmd == 'unreadClear') {
        var channelID = param['channel_id'];
        var channelType = param['channel_type'];
        var unread = param['unread'];
        if (channelID != '') {
          WKIM.shared.conversationManager.updateRedDot(
            channelID,
            channelType,
            unread,
          );
        }
      }
    });

    // 监听同步某个频道的消息
    WKIM.shared.messageManager.addOnSyncChannelMsgListener((
      channelID,
      channelType,
      startMessageSeq,
      endMessageSeq,
      limit,
      pullMode,
      back,
    ) async {
      try {
        final result = await Apis.syncChannelMessage(
            channelId: channelID,
            channelType: channelType,
            startMessageSeq: startMessageSeq,
            endMessageReq: endMessageSeq,
            limit: limit,
            pullMode: pullMode);
        if (result != null) {
          WKSyncChannelMsg msg = WKSyncChannelMsg();
          msg.startMessageSeq = result['start_message_seq'];
          msg.endMessageSeq = result['end_message_seq'];
          msg.more = result['more'];
          var messages = result['messages'];

          List<WKSyncMsg> msgList = [];
          for (int i = 0; i < messages.length; i++) {
            dynamic json = messages[i];
            msgList.add(_getWKSyncMsg(json));
          }
          msg.messages = msgList;
          back(msg);
        } else {
          back(WKSyncChannelMsg());
        }
        _ackDeviceUUID();
      } catch (e) {
        AppLogger.e("回调同步频道消息失败", e);
        back(WKSyncChannelMsg());
      }
    });

    // 监听获取channel资料（群/个人信息）
    WKIM.shared.channelManager.addOnGetChannelListener((
      channelId,
      channelType,
      back,
    ) async {
      try {
        final entity = await Apis.getChannel(
            channelId: channelId, channelType: channelType);
        if (entity != null) {
          Map<String, dynamic>? channelExtraMap = {};
          WKChannel channel = WKChannel(channelId, channelType);
          WKChannel? localChannel = await WKIM.shared.channelManager
              .getChannel(channelId, channelType);
          bool isRefreshContacts = false;
          if (localChannel != null && localChannel.channelID.isNotEmpty) {
            channel.avatarCacheKey = localChannel.avatarCacheKey;
            channelExtraMap = localChannel.localExtra;

            if (entity.follow != channel.follow ||
                channel.status != entity.status) {
              isRefreshContacts = true;
            }
          }

          channel.channelName = entity.name;
          channel.avatar = entity.logo;
          channel.channelRemark = entity.remark;
          channel.status = entity.status;
          channel.online = entity.online;
          channel.lastOffline = entity.lastOffline;
          channel.receipt = entity.receipt;
          channel.robot = entity.robot;
          channel.category = entity.category;
          channel.top = entity.stick;
          channel.mute = entity.mute;
          channel.showNick = entity.showNick;
          channel.follow = entity.follow;
          channel.save = entity.save;
          channel.forbidden = entity.forbidden;
          channel.invite = entity.invite;
          // channel.flame = entity.flame;
          // channel.flameSecond = entity.flame_second;
          channel.deviceFlag = entity.deviceFlag;

          if (entity.parentChannel != null) {
            channel.parentChannelID = entity.parentChannel!.channelId;
            channel.parentChannelType = entity.parentChannel!.channelType;
          }

          channel.remoteExtraMap = entity.extra;

          channelExtraMap ??= {};

          channelExtraMap[WKChannelExtras.beDeleted] = entity.beDeleted;
          channelExtraMap[WKChannelExtras.beBlacklist] = entity.beBlacklist;
          channelExtraMap[WKChannelExtras.notice] = entity.notice;

          channel.localExtra = channelExtraMap;
          back(channel);
          if (isRefreshContacts) {
            _contactController.syncContacts();
          }
          return;
        }

        back(WKChannel(channelId, channelType));
      } catch (e) {
        back(WKChannel(channelId, channelType));
        AppLogger.e("获取频道信息失败", e);
      }
    });

    // 监听同步最近会话
    WKIM.shared.conversationManager.addOnSyncConversationListener((
      lastSsgSeqs,
      msgCount,
      version,
      back,
    ) async {
      try {
        final result = await Apis.syncConversation(
            version: version,
            lastSsgSeqs: lastSsgSeqs,
            deviceUUID: CommonModule.deviceID,
            msgCount: msgCount);
        if (result != null &&
            (result['uid'] as String).isNotEmpty &&
            result['uid'] == state.userCert?.uid) {
          if (result['conversations'] != null &&
              (result['conversations'] as List).isNotEmpty) {
            _appCoreService.setIsRefreshChatActivityMessage(true);
          }
          final channelStatus = (result['channel_status'] as List)
              .map((e) => ChannelSimpleState.fromJson(e))
              .toList();
          state =
              state.copyWith(channelStatus: channelStatus, lastMessageSeq: 0);
          WKSyncConversation syncConversation = WKSyncConversation();
          syncConversation.conversations = [];
          for (var i = 0; i < result['conversations'].length; i++) {
            var json = result['conversations'][i];
            WKSyncConvMsg convMsg = WKSyncConvMsg();
            convMsg.channelID = json['channel_id'];
            convMsg.channelType = json['channel_type'];
            convMsg.unread = json['unread'] ?? 0;
            convMsg.timestamp = json['timestamp'];
            convMsg.lastMsgSeq = json['last_msg_seq'];
            convMsg.lastClientMsgNO = json['last_client_msg_no'];
            convMsg.version = json['version'];
            var msgListJson = json['recents'] as List<dynamic>;
            List<WKSyncMsg> msgList = [];
            if (msgListJson.isNotEmpty) {
              for (int j = 0; j < msgListJson.length; j++) {
                var msgJson = msgListJson[j];
                msgList.add(_getWKSyncMsg(msgJson));
              }
            }

            convMsg.recents = msgList;
            syncConversation.conversations!.add(convMsg);
          }
          _ackDeviceUUID();
          back(syncConversation);
        } else {
          back(WKSyncConversation()..conversations = []);
        }
      } catch (e) {
        AppLogger.e("回调会话失败", e);
        back(WKSyncConversation()..conversations = []);
      }
    });

    // 监听上传消息附件
    WKIM.shared.messageManager.addOnUploadAttachmentListener((wkMsg, back) {
      if (wkMsg.contentType == WkMessageContentType.image) {
        // todo 上传附件
        WKImageContent imageContent = wkMsg.messageContent! as WKImageContent;
        imageContent.url = 'xxxxxx';
        wkMsg.messageContent = imageContent;
        back(true, wkMsg);
      }
      if (wkMsg.contentType == WkMessageContentType.voice) {
        // todo 上传语音
        WKVoiceContent voiceContent = wkMsg.messageContent! as WKVoiceContent;
        voiceContent.url = 'xxxxxx';
        wkMsg.messageContent = voiceContent;
        back(true, wkMsg);
      } else if (wkMsg.contentType == WkMessageContentType.video) {
        WKVideoContent videoContent = wkMsg.messageContent! as WKVideoContent;
        // todo 上传封面及视频
        videoContent.cover = 'xxxxxx';
        videoContent.url = 'ssssss';
        wkMsg.messageContent = videoContent;
        back(true, wkMsg);
      }
    });
  }

  void _playMessageSound() async {
    bool isAllowVoice = true;
    bool isAollowBeep = true;
    bool isMuteOfApp = false;
    final userInfo = state.userCert;
    if (userInfo != null) {
      isAllowVoice = userInfo.setting.voiceOn == 1;
      isAollowBeep = userInfo.setting.shockOn == 1;
      isMuteOfApp = userInfo.setting.muteOfApp == 1;
    }
    if (isAllowVoice && !isMuteOfApp) {
      _appCoreService.playIncomingMessageSound();
    }
    if (isAollowBeep) {
      if (await Vibration.hasVibrator() == true) {
        Vibration.vibrate();
      }
    }
  }

  WKSyncMsg _getWKSyncMsg(dynamic json) {
    WKSyncMsg msg = WKSyncMsg();
    msg.channelID = json['channel_id'];
    msg.messageID = json['message_id'].toString();
    msg.channelType = json['channel_type'];
    msg.clientMsgNO = json['client_msg_no'];
    msg.messageSeq = json['message_seq'];
    msg.fromUID = json['from_uid'];
    msg.isDeleted = json['is_deleted'];
    msg.timestamp = json['timestamp'];
    msg.extraVersion = json['extra_version'];

    //  msg.payload = json['payload'];

    // String payload = json['payload'];
    try {
      msg.payload = json['payload'];
      // msg.payload = jsonDecode(utf8.decode(base64Decode(payload)));
    } catch (e) {
      // print('异常了');
    }
    // 解析扩展
    var extraJson = json['message_extra'];
    if (extraJson != null) {
      var extra = _getMsgExtra(extraJson);
      msg.messageExtra = extra;
    }
    return msg;
  }

  WKSyncExtraMsg _getMsgExtra(dynamic extraJson) {
    var extra = WKSyncExtraMsg();
    extra.messageID = extraJson['message_id'];
    extra.messageIdStr = extraJson['message_id_str'];
    extra.revoke = extraJson['revoke'] ?? 0;
    extra.revoker = extraJson['revoker'] ?? '';
    extra.readed = extraJson['readed'] ?? 0;
    extra.readedCount = extraJson['readed_count'] ?? 0;
    extra.isMutualDeleted = extraJson['is_mutual_deleted'] ?? 0;
    return extra;
  }

  void _ackDeviceUUID() {
    Apis.ackCoverMsg(deviceUUID: CommonModule.deviceID);
  }
}

class WKChannelExtras {
  //频道内禁止加好友
  static String forbiddenAddFriend = "forbidden_add_friend";
  //截屏通知
  static String screenshot = "screenshot";
  //公告
  static String notice = "notice";
  //消息撤回提醒
  static String revokeRemind = "revoke_remind";
  //进群提醒
  static String joinGroupRemind = "join_group_remind";
  //是否设置聊天密码
  static String chatPwdOn = "chat_pwd_on";
  //来源
  static String sourceDesc = "source_desc";
  //验证码
  static String vercode = "vercode";
  // 是否被删除
  static String beDeleted = "be_deleted";
  // 是否被拉入黑名单
  static String beBlacklist = "be_blacklist";
  // 是否允许新成员查看历史消息
  static String allowViewHistoryMsg = "allow_view_history_msg";
  // 群类型
  static String groupType = "group_type";
}

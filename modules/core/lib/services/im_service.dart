import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/common/options.dart';
import 'package:wukongimfluttersdk/model/wk_image_content.dart';
import 'package:wukongimfluttersdk/model/wk_video_content.dart';
import 'package:wukongimfluttersdk/model/wk_voice_content.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';
import 'package:vibration/vibration.dart';

part 'im_service.g.dart';

class IMState {
  UserCert? userCert;

  IMState({
    this.userCert,
  });

  IMState copyWith({
    UserCert? userCert,
  }) {
    return IMState(
      userCert: userCert ?? this.userCert,
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
      bool result = await WKIM.shared.setup(Options.newDefault(cert.uid, cert.token));
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
    
    WKIM.shared.cmdManager.addOnCmdListener('sys_im', (wkcmd) async {
      final param = wkcmd.param;
      if (wkcmd.cmd == 'friendRequest'){
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
      if (wkcmd.cmd == 'friendAccept'){
        // 接受好友申请
        final toUID = param['to_uid'];
        final fromUID = param['from_uid'];
        if (!toUID || toUID == "") {
          return;
        }
        if (!Utils.isEmptyOrNull(fromUID)){
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
      if (wkcmd.cmd == 'friendDeleted'){
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
    ) {
      // Apis.syncChannelMsg(
      //   channelID,
      //   channelType,
      //   startMessageSeq,
      //   endMessageSeq,
      //   limit,
      //   pullMode,
      //   (p0) => back(p0),
      // );
    });

    // 监听获取channel资料（群/个人信息）
    WKIM.shared.channelManager.addOnGetChannelListener((
      channelId,
      channelType,
      back,
    ) {
      if (channelType == WKChannelType.personal) {
        // 获取个人资料
        // Apis.getUserInfo(channelId);
      } else if (channelType == WKChannelType.group) {
        // 获取群资料
        // Apis.getGroupInfo(channelId);
      }
    });

    // 监听同步最近会话
    WKIM.shared.conversationManager.addOnSyncConversationListener((
      lastSsgSeqs,
      msgCount,
      version,
      back,
    ) {
      // Apis.syncConversation(lastSsgSeqs, msgCount, version, back);
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
}

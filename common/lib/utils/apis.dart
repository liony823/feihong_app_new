import 'package:common/common.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

class Apis {
  static String apiURL = "http://127.0.0.1:8090/v1";

  static Future<Map<String, dynamic>> getAppConfig(double version) async {
    final response = await HttpUtil.get(
      '$apiURL/common/appconfig?version=$version',
    );
    return response;
  }

  static getAvatarUrl(String uid) {
    return "$apiURL/users/$uid/avatar";
  }

  static getGroupAvatarUrl(String gid) {
    return "$apiURL/groups/$gid/avatar";
  }

  static Future<String> getIP(String uid) async {
    String ip = '';
    try {
      final response = await HttpUtil.get('$apiURL/users/$uid/route');
      ip = response['tcp_addr'];
    } catch (e) {
      ip = '';
    }

    return ip;
  }

  static Future<bool> login(String uid, String token) async {
    try {
      await HttpUtil.post(
        "$apiURL/user/login",
        data: {'uid': uid, 'token': token, 'device_flag': 0, 'device_level': 1},
      );
      return true;
    } catch (e) {
      Logger.print(e);
      return false;
    }
  }

  static syncMsgExtra(String channelId, int channelType, int version) async {
    final uid = DataSp.uid;
    try {
      final response = await HttpUtil.post(
        '$apiURL/message/extra/sync',
        data: {
          'login_uid': uid,
          'channel_id': channelId,
          'channel_type': channelType,
          'source': uid,
          'limit': 100,
          'extra_version': version,
        },
      );
      var arrJson = response.data;
      if (arrJson != null && arrJson.length > 0) {
        List<WKMsgExtra> list = [];
        for (int i = 0; i < arrJson.length; i++) {
          var extraJson = arrJson[i];
          WKMsgExtra extra = WKMsgExtra();
          extra.messageID = extraJson['message_id_str'];
          extra.revoke = extraJson['revoke'] ?? 0;
          extra.revoker = extraJson['revoker'] ?? '';
          extra.readed = extraJson['readed'] ?? 0;
          extra.readedCount = extraJson['readed_count'] ?? 0;
          extra.isMutualDeleted = extraJson['is_mutual_deleted'] ?? 0;
          extra.extraVersion = extraJson['extra_version'] ?? 0;
          list.add(extra);
        }
        WKIM.shared.messageManager.saveRemoteExtraMsg(list);
      }
    } catch (e) {
      Logger.print("同步消息扩展失败$e");
    }
  }

  static Future<bool> getUserInfo(String uid) async {
    try {
      final response = await HttpUtil.get('$apiURL/users/$uid');
      var channel = WKChannel(uid, WKChannelType.personal);
      channel.channelName = response['name'];
      channel.avatar = response['avatar'];
      WKIM.shared.channelManager.addOrUpdateChannel(channel);
      return true;
    } catch (e) {
      Logger.print("获取用户信息失败$e");
      return false;
    }
  }

  static Future<bool> getGroupInfo(String gid) async {
    try {
      final response = await HttpUtil.get('$apiURL/groups/$gid');
      var channel = WKChannel(gid, WKChannelType.group);
      channel.channelName = response['name'];
      channel.avatar = response['avatar'];
      WKIM.shared.channelManager.addOrUpdateChannel(channel);
      return true;
    } catch (e) {
      Logger.print("获取群信息失败$e");
      return false;
    }
  }

  static Future<bool> syncConversation(
    String lastSsgSeqs,
    int msgCount,
    int version,
    Function(WKSyncConversation) back,
  ) async {
    try {
      final data = await HttpUtil.post(
        '$apiURL/conversation/sync',
        data: {
          "login_uid": DataSp.uid, // 当前登录用户uid
          "version": version, //  当前客户端的会话最大版本号(从保存的结果里取最大的version，如果本地没有数据则传0)，
          "last_msg_seqs":
              lastSsgSeqs, //   客户端所有频道会话的最后一条消息序列号拼接出来的同步串 格式： channelID:channelType:last_msg_seq|channelID:channelType:last_msg_seq  （此字段非必填，如果不填就获取全量数据，填写了获取增量数据，看你自己的需求。）
          "msg_count": 10, // 每个会话获取最大的消息数量，一般为app点进去第一屏的数据
          "device_uuid": DataSp.uid,
        },
      );
      WKSyncConversation conversation = WKSyncConversation();
      conversation.conversations = [];

      var list = data['conversations'];
      // var list = jsonDecode(response.data);
      for (int i = 0; i < list.length; i++) {
        var json = list[i];
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
            msgList.add(getWKSyncMsg(msgJson));
          }
        }

        convMsg.recents = msgList;
        conversation.conversations!.add(convMsg);
      }

      back(conversation);
      return true;
    } catch (e) {
      Logger.print("同步最近会话失败$e");
      return false;
    }
  }

  static Future<bool> syncChannelMsg(
    String channelId,
    int channelType,
    int startMessageSeq,
    int endMessageSeq,
    int limit,
    int pullMode,
    Function(WKSyncChannelMsg) back,
  ) async {
    try {
      final data = await HttpUtil.post(
        '$apiURL/message/sync',
        data: {
          "login_uid": DataSp.uid, // 当前登录用户uid
          "channel_id": channelId, //  频道ID
          "channel_type": channelType, // 频道类型
          "start_message_seq":
              startMessageSeq, // 开始消息列号（结果包含start_message_seq的消息）
          "end_message_seq": endMessageSeq, // 结束消息列号（结果不包含end_message_seq的消息）
          "limit": limit, // 消息数量限制
          "pull_mode": pullMode, // 拉取模式 0:向下拉取 1:向上拉取
        },
      );

      WKSyncChannelMsg msg = WKSyncChannelMsg();
      msg.startMessageSeq = data['start_message_seq'];
      msg.endMessageSeq = data['end_message_seq'];
      msg.more = data['more'];
      var messages = data['messages'];

      List<WKSyncMsg> msgList = [];
      for (int i = 0; i < messages.length; i++) {
        dynamic json = messages[i];
        msgList.add(getWKSyncMsg(json));
      }
      Logger.print('同步channel消息数量：${msgList.length}');
      msg.messages = msgList;
      back(msg);
      return true;
    } catch (e) {
      Logger.print("同步频道消息失败$e");
      return false;
    }
  }

  static WKSyncMsg getWKSyncMsg(dynamic json) {
    WKSyncMsg msg = WKSyncMsg();
    msg.channelID = json['channel_id'];
    msg.messageID = json['message_id'].toString();
    msg.channelType = json['channel_type'];
    msg.clientMsgNO = json['client_msg_no'];
    msg.messageSeq = json['message_seq'];
    msg.fromUID = json['from_uid'];
    msg.isDeleted = json['is_deleted'];
    msg.timestamp = json['timestamp'];
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
      var extra = getMsgExtra(extraJson);
      msg.messageExtra = extra;
    }
    return msg;
  }

  static WKSyncExtraMsg getMsgExtra(dynamic extraJson) {
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
}

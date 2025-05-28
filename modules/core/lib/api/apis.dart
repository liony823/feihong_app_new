import 'package:common/common.dart';
import 'package:dio/dio.dart';

import '../models/channel/channel_info.dart';
import 'api_client.dart';
import 'api_config.dart';

class Apis {
  static String getAvatarUrl(String uid, {String cacheKey = ""}) {
    if (cacheKey.isNotEmpty) {
      return "${ApiConfig.baseUrl}/users/$uid/avatar?cacheKey=$cacheKey";
    }
    return "${ApiConfig.baseUrl}/users/$uid/avatar";
  }

  static String getGroupAvatarUrl(String gid, {String cacheKey = ""}) {
    if (cacheKey.isNotEmpty) {
      return "${ApiConfig.baseUrl}/groups/$gid/avatar?cacheKey=$cacheKey";
    }
    return "${ApiConfig.baseUrl}/groups/$gid/avatar";
  }

  /// 上传文件
  static Future<String?> uploadFile(
    String path, {
    FileType fileType = FileType.common,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(path),
      });
      final response = await ApiClient.instance.post(
        '/file/upload',
        data: formData,
        queryParameters: {"type": fileType.name, "path": path},
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
      return response.data['path'];
    } catch (e) {
      AppLogger.e("用户上传文件失败", e);
      return null;
    }
  }

  /// 上传头像
  static Future<bool> uploadAvatar(String path, String uid) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path),
    });
    try {
      await ApiClient.instance.post(
        '/users/$uid/avatar',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
      return true;
    } catch (e) {
      AppLogger.e("用户上传头像失败", e);
      return false;
    }
  }

  /// 健康检查
  static Future<bool> healthCheck() async {
    try {
      final response = await ApiClient.instance.get(ApiConfig.health);
      return response.data['status'] == 'up';
    } catch (e) {
      AppLogger.e("健康检查失败", e);
      return false;
    }
  }

  /// 同步会话
  static Future syncConversation({
    required int version,
    required String lastSsgSeqs,
    required String deviceUUID,
    required int msgCount,
  }) async {
    try {
      final response =
          await ApiClient.instance.post(ApiConfig.syncConversation, data: {
        "version": version,
        "last_msg_seqs": lastSsgSeqs,
        "device_uuid": deviceUUID,
        "msg_count": msgCount,
      });
      return response.data;
    } catch (e) {
      AppLogger.e("同步会话失败");
      return null;
    }
  }

  /// 同步消息
  static Future syncMessage(
      {required int limit, required int maxMessageSeq}) async {
    try {
      final response = await ApiClient.instance.post(ApiConfig.syncMessage,
          data: {"limit": limit, "max_message_seq": maxMessageSeq});
      return response.data;
    } catch (e) {
      AppLogger.e("同步消息失败");
      return null;
    }
  }

  ///
  /// 同步某个频道的消息
  /// @param channelID           频道ID
  /// @param channelType         频道类型
  /// @param startMessageSeq     最小messageSeq
  /// @param endMessageSeq       最大messageSeq
  /// @param limit               获取条数
  /// @param pullMode            拉取模式 0:向下拉取 1:向上拉取
  ///
  static Future syncChannelMessage(
      {required String channelId,
      required int channelType,
      required int startMessageSeq,
      required int endMessageReq,
      required int limit,
      required int pullMode}) async {
    try {
      final response =
          await ApiClient.instance.post(ApiConfig.syncChannelMessage, data: {
        "channel_id": channelId,
        "channel_type": channelType,
        "start_message_seq": startMessageSeq,
        "end_message_seq": endMessageReq,
        "limit": limit,
        "pull_mode": pullMode
      });
      return response.data;
    } catch (e) {
      AppLogger.e("同步频道消息失败");
      return null;
    }
  }

  // 获取频道
  static Future<ChannelInfo?> getChannel(
      {required String channelId, required int channelType}) async {
    try {
      final response =
          await ApiClient.instance.get("/channels/$channelId/$channelType");
      if (response.data != null) {
        return ChannelInfo.fromJson(response.data);
      }
      return null;
    } catch (e) {
      AppLogger.e("获取频道失败");
      return null;
    }
  }

  /// 同步设备消息
  static Future ackCoverMsg({required String deviceUUID}) async {
    try {
      await ApiClient.instance.post(ApiConfig.ackConverMsg, data: {
        "device_uuid": deviceUUID,
      });
    } catch (e) {
      AppLogger.e("同步设备消息失败");
      return null;
    }
  }

  /// 更新用户设置
  static Future<bool> updateUserSetting(
      {required String uid, required Map<String, dynamic> data}) async {
    try {
      await ApiClient.instance.put("/users/$uid/setting", data: data);
      return true;
    } catch (e) {
      AppLogger.e("更新用户设置失败");
      return false;
    }
  }

  /// 更新群设置
  static Future<bool> updateGroupSetting(
      {required String groupNo, required Map<String, dynamic> data}) async {
    try {
      await ApiClient.instance.put("/groups/$groupNo/setting", data: data);
      return true;
    } catch (e) {
      AppLogger.e("更新群组设置失败");
      return false;
    }
  }

  /// 获取用户信息
  static Future<UserInfo?> getUserInfo({required String uid}) async {
    try {
      final response = await ApiClient.instance.get("/users/$uid");
      if (response.data != null) {
        return UserInfo.fromJson(response.data);
      }
      return null;
    } catch (e) {
      AppLogger.e("获取用户信息失败");
      return null;
    }
  }

  /// 获取群组信息
  static Future<GroupInfo?> getGroupInfo({required String groupNo}) async {
    try {
      final response = await ApiClient.instance.get("/groups/$groupNo");
      if (response.data != null) {
        return GroupInfo.fromJson(response.data);
      }
      return null;
    } catch (e) {
      AppLogger.e("获取群组信息失败");
      return null;
    }
  }
}

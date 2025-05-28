import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'im_repository.g.dart';

class IMRepository {
  final ApiClient _apiClient;

  IMRepository(this._apiClient);

  /// 获取IM通信地址
  Future<String> getIMTCPAddress(String uid) async {
    String ip = '';
    try {
      final response = await _apiClient.get("/users/$uid/im");
      ip = response.data['tcp_addr'];
    } catch (e) {
      AppLogger.e('获取IM通信地址失败', e);
      ip = '';
    }
    return ip;
  }

  /// 更新会话未读数
  Future<bool> updateConversationUnreadCount(
      String channelID, int channelType, int unread) async {
    try {
      await _apiClient.put(ApiConfig.clearUnread, data: {
        "unread": unread,
        "channel_id": channelID,
        "channel_type": channelType
      });
      return true;
    } catch (e) {
      AppLogger.e("更新会话未读数失败");
      return false;
    }
  }

  /// 清除某频道消息
  Future<bool> offsetMessage(
      String channelID, int channelType, int messageSeq) async {
    try {
      await _apiClient.put(ApiConfig.offsetMessage, data: {
        "message_seq": messageSeq,
        "channel_id": channelID,
        "channel_type": channelType
      });
      return true;
    } catch (e) {
      AppLogger.e("清除频道消息失败");
      return false;
    }
  }
}

@riverpod
IMRepository imRepository(Ref ref) {
  return IMRepository(ApiClient.instance);
}

import 'package:common/common.dart';
import 'package:contact/models/contact.dart';
import 'package:contact/models/friend_apply.dart';
import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_repositoty.g.dart';

class ContactRepository {
  final ApiClient _apiClient;

  ContactRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<List<Contact>> syncContacts({
    required int version,
  }) async {
    try {
      final response = await _apiClient.get(ApiConfig.syncContacts,
          queryParameters: {'version': version, 'api_version': 1});
      return (response.data as List)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      AppLogger.e('同步联系人失败: $e');
      return [];
    }
  }

  Future<int> getUnreadCount() async {
    try {
      final response =
          await _apiClient.get(ApiConfig.getFriendApplyUnreadCount);
      return response.data['count'].toInt();
    } catch (e) {
      AppLogger.e('获取未读消息数量失败', e);
      return 0;
    }
  }

  Future<Pagination<FriendApply>> getFriendApplyList({
    required int pageIndex,
    required int pageSize,
  }) async {
    try {
      final response = await _apiClient.get(ApiConfig.getFriendApplyList,
          queryParameters: {'page_index': pageIndex, 'page_size': pageSize});
      if (response.data['list'] != null) {
        return Pagination(
          total: response.data['total'],
          list: (response.data['list'] as List)
              .map((e) => FriendApply.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      }
      return Pagination(total: 0, list: []);
    } catch (e) {
      AppLogger.e('获取好友申请列表失败', e);
      rethrow;
    }
  }

  Future<bool> acceptFriendApply(String token) async {
    try {
      await _apiClient.post(ApiConfig.sureFriendApply,
          data: {'token': token});
      return true;
    } catch (e) {
      AppLogger.e('接受好友申请失败', e);
      return false;
    }
  }

  Future<bool> refuseFriendApply(String toUid) async {
    try {
      await _apiClient.put(
        ApiConfig.refuseFriendApply.replaceAll(':to_uid', toUid),
      );
      return true;
    } catch (e) {
      AppLogger.e('拒绝好友申请失败', e);
      return false;
    }
  }

  Future<UserInfo?> searchUser(String keyword) async {
    try {
      final response = await _apiClient.get(ApiConfig.searchUser,
          queryParameters: {'keyword': keyword});
      return UserInfo.fromJson(response.data);
    } catch (e) {
      AppLogger.e('搜索用户失败', e);
      return null;
    }
  }
}

@riverpod
ContactRepository contactRepository(Ref ref) {
  return ContactRepository(apiClient: ApiClient.instance);
}

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_repository.g.dart';

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

  Future<int> getUnreadFriendApplyCount() async {
    try {
      final response =
          await _apiClient.get(ApiConfig.getFriendApplyUnreadCount);
      return response.data['count'].toInt();
    } catch (e) {
      AppLogger.e('获取未读消息数量失败', e);
      return 0;
    }
  }

  Future<bool> markFriendApplyRead() async {
    try {
      await _apiClient.delete(ApiConfig.clearFriendApplyUnread);
      return true;
    } catch (e) {
      AppLogger.e('标记好友申请已读失败', e);
      return false;
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
          total: response.data['count'],
          list: (response.data['list'] as List)
              .map((e) => FriendApply.fromJson(e))
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
      await _apiClient.post(ApiConfig.sureFriendApply, data: {'token': token});
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

  Future<SearchUserInfo?> searchUser(String keyword) async {
    try {
      final response = await _apiClient
          .get(ApiConfig.searchUser, queryParameters: {'keyword': keyword});
      final exist = response.data['exist'];
      if (exist == 1) {
        return SearchUserInfo.fromJson(response.data['data']);
      }
      return null;
    } catch (e) {
      AppLogger.e('搜索用户失败', e);
      return null;
    }
  }

  Future<bool> applyFriend({
    required String toUid,
    required String remark,
    required String vercode,
  }) async {
    try {
      await _apiClient.post(ApiConfig.applyFriend, data: {
        'to_uid': toUid,
        'remark': remark,
        'vercode': vercode,
      });
      return true;
    } catch (e) {
      AppLogger.e('申请添加好友失败', e);
      return false;
    }
  }
}

@riverpod
ContactRepository contactRepository(Ref ref) {
  return ContactRepository(apiClient: ApiClient.instance);
}

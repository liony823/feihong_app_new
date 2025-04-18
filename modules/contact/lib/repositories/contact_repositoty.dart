import 'package:common/common.dart';
import 'package:contact/models/contact.dart';
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
}

@riverpod
ContactRepository contactRepository(Ref ref) {
  return ContactRepository(apiClient: ApiClient.instance);
}

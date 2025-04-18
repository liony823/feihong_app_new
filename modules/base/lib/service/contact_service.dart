import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_service.g.dart';

class ContactService {
  final ApiClient _apiClient;
  ContactService(this._apiClient);

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
ContactService contactService(Ref ref) {
  return ContactService(ApiClient.instance);
}

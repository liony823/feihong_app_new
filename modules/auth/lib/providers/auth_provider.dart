import 'package:auth/models/user_info.dart';
import 'package:auth/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Future<UserInfo?> getCurrentUser(Ref ref, String uid) async {
  final authService = ref.watch(authServiceProvider);
  return authService.getUserInfo(uid);
}

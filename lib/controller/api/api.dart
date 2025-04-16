import 'package:common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api.g.dart';

@riverpod
Future<UserInfo> getCurrentUser(Ref ref, String uid) => Apis.getUserInfo(uid);

@riverpod
Future<String> getAvatarUrl(Ref ref, String uid) => Apis.getAvatarUrl(uid);

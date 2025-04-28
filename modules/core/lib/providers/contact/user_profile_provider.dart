import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

class UserProfileState {}

@riverpod
class UserProfileController extends _$UserProfileController {
  @override
  UserProfileState build() {
    return UserProfileState();
  }
}

import 'package:contact/services/contact_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:common/common.dart';

part 'search_user_provider.g.dart';

class SearchUserState {
  final SearchUserInfo? userInfo;
  final bool isSearched;

  const SearchUserState({
    this.userInfo,
    this.isSearched = false,
  });

  SearchUserState copyWith({
    SearchUserInfo? userInfo,
    bool? isSearched,
  }) {
    return SearchUserState(
      userInfo: userInfo ?? this.userInfo,
      isSearched: isSearched ?? this.isSearched,
    );
  }
}

@riverpod
class SearchUserController extends _$SearchUserController {
  ContactService get _contactService => ref.watch(contactServiceProvider);

  @override
  SearchUserState build() {
    return SearchUserState(userInfo: null);
  }

  Future<void> searchUser(String keyword) async {
    state = state.copyWith(userInfo: null, isSearched: false);
    final result = await _contactService.searchUser(keyword);
    state = state.copyWith(userInfo: result, isSearched: true);
  }
}

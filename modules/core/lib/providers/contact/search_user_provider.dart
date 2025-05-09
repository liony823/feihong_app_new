import 'package:auto_route/auto_route.dart';
import 'package:contact/route/route.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';

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
    if (result != null){
      Global.context!.router.push(FriendHomeRoute(userInfo: result));
    }
  }
}

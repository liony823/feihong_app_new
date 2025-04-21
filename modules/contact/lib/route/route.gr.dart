// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:contact/screens/friend_apply_screen.dart' as _i1;
import 'package:contact/screens/search_user_screen.dart' as _i2;

/// generated route for
/// [_i1.FriendApplyScreen]
class FriendApplyRoute extends _i3.PageRouteInfo<void> {
  const FriendApplyRoute({List<_i3.PageRouteInfo>? children})
    : super(FriendApplyRoute.name, initialChildren: children);

  static const String name = 'FriendApplyRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.FriendApplyScreen();
    },
  );
}

/// generated route for
/// [_i2.SearchUserScreen]
class SearchUserRoute extends _i3.PageRouteInfo<void> {
  const SearchUserRoute({List<_i3.PageRouteInfo>? children})
    : super(SearchUserRoute.name, initialChildren: children);

  static const String name = 'SearchUserRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SearchUserScreen();
    },
  );
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:common/common.dart' as _i6;
import 'package:contact/screens/friend_apply_screen.dart' as _i1;
import 'package:contact/screens/friend_home_screen.dart' as _i2;
import 'package:contact/screens/search_user_screen.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;

/// generated route for
/// [_i1.FriendApplyScreen]
class FriendApplyRoute extends _i4.PageRouteInfo<void> {
  const FriendApplyRoute({List<_i4.PageRouteInfo>? children})
    : super(FriendApplyRoute.name, initialChildren: children);

  static const String name = 'FriendApplyRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.FriendApplyScreen();
    },
  );
}

/// generated route for
/// [_i2.FriendHomeScreen]
class FriendHomeRoute extends _i4.PageRouteInfo<FriendHomeRouteArgs> {
  FriendHomeRoute({
    _i5.Key? key,
    required _i6.SearchUserInfo userInfo,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         FriendHomeRoute.name,
         args: FriendHomeRouteArgs(key: key, userInfo: userInfo),
         initialChildren: children,
       );

  static const String name = 'FriendHomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FriendHomeRouteArgs>();
      return _i2.FriendHomeScreen(key: args.key, userInfo: args.userInfo);
    },
  );
}

class FriendHomeRouteArgs {
  const FriendHomeRouteArgs({this.key, required this.userInfo});

  final _i5.Key? key;

  final _i6.SearchUserInfo userInfo;

  @override
  String toString() {
    return 'FriendHomeRouteArgs{key: $key, userInfo: $userInfo}';
  }
}

/// generated route for
/// [_i3.SearchUserScreen]
class SearchUserRoute extends _i4.PageRouteInfo<void> {
  const SearchUserRoute({List<_i4.PageRouteInfo>? children})
    : super(SearchUserRoute.name, initialChildren: children);

  static const String name = 'SearchUserRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SearchUserScreen();
    },
  );
}

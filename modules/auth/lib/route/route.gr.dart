// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth/screens/login_screen.dart' as _i1;
import 'package:auth/screens/login_with_auto.dart' as _i2;
import 'package:auto_route/auto_route.dart' as _i3;

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute({List<_i3.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginWithDevicePage]
class LoginWithDeviceRoute extends _i3.PageRouteInfo<void> {
  const LoginWithDeviceRoute({List<_i3.PageRouteInfo>? children})
    : super(LoginWithDeviceRoute.name, initialChildren: children);

  static const String name = 'LoginWithDeviceRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginWithDevicePage();
    },
  );
}

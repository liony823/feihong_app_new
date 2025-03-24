// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:feihong/pages/ui/home_page.dart' deferred as _i1;
import 'package:feihong/pages/ui/lang_page.dart' deferred as _i2;
import 'package:feihong/pages/ui/signin_page.dart' deferred as _i3;
import 'package:feihong/pages/ui/signup_page.dart' deferred as _i4;
import 'package:feihong/pages/ui/splash_page.dart' deferred as _i5;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(_i1.loadLibrary, () => _i1.HomePage());
    },
  );
}

/// generated route for
/// [_i2.LangPage]
class LangRoute extends _i6.PageRouteInfo<void> {
  const LangRoute({List<_i6.PageRouteInfo>? children})
    : super(LangRoute.name, initialChildren: children);

  static const String name = 'LangRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(_i2.loadLibrary, () => _i2.LangPage());
    },
  );
}

/// generated route for
/// [_i3.SigninPage]
class SigninRoute extends _i6.PageRouteInfo<void> {
  const SigninRoute({List<_i6.PageRouteInfo>? children})
    : super(SigninRoute.name, initialChildren: children);

  static const String name = 'SigninRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(_i3.loadLibrary, () => _i3.SigninPage());
    },
  );
}

/// generated route for
/// [_i4.SignupPage]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute({List<_i6.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(_i4.loadLibrary, () => _i4.SignupPage());
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(_i5.loadLibrary, () => _i5.SplashPage());
    },
  );
}

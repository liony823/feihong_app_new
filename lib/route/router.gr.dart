// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:feihong/ui/home_page.dart' deferred as _i1;
import 'package:feihong/ui/lang_page.dart' deferred as _i2;
import 'package:feihong/ui/login_with_device_page.dart' deferred as _i3;
import 'package:feihong/ui/signin_page.dart' deferred as _i4;
import 'package:feihong/ui/signup_page.dart' deferred as _i5;
import 'package:feihong/ui/splash_page.dart' deferred as _i6;
import 'package:feihong/ui/webview_page.dart' deferred as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i1.loadLibrary, () => _i1.HomePage());
    },
  );
}

/// generated route for
/// [_i2.LangPage]
class LangRoute extends _i8.PageRouteInfo<void> {
  const LangRoute({List<_i8.PageRouteInfo>? children})
    : super(LangRoute.name, initialChildren: children);

  static const String name = 'LangRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i2.loadLibrary, () => _i2.LangPage());
    },
  );
}

/// generated route for
/// [_i3.LoginWithDevicePage]
class LoginWithDeviceRoute extends _i8.PageRouteInfo<void> {
  const LoginWithDeviceRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginWithDeviceRoute.name, initialChildren: children);

  static const String name = 'LoginWithDeviceRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.LoginWithDevicePage(),
      );
    },
  );
}

/// generated route for
/// [_i4.SigninPage]
class SigninRoute extends _i8.PageRouteInfo<void> {
  const SigninRoute({List<_i8.PageRouteInfo>? children})
    : super(SigninRoute.name, initialChildren: children);

  static const String name = 'SigninRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i4.loadLibrary, () => _i4.SigninPage());
    },
  );
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i8.PageRouteInfo<void> {
  const SignupRoute({List<_i8.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i5.loadLibrary, () => _i5.SignupPage());
    },
  );
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i6.loadLibrary, () => _i6.SplashPage());
    },
  );
}

/// generated route for
/// [_i7.WebViewPage]
class WebViewRoute extends _i8.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i9.Key? key,
    String? url,
    String? title,
    String? htmlContent,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         WebViewRoute.name,
         args: WebViewRouteArgs(
           key: key,
           url: url,
           title: title,
           htmlContent: htmlContent,
         ),
         initialChildren: children,
       );

  static const String name = 'WebViewRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>(
        orElse: () => const WebViewRouteArgs(),
      );
      return _i8.DeferredWidget(
        _i7.loadLibrary,
        () => _i7.WebViewPage(
          key: args.key,
          url: args.url,
          title: args.title,
          htmlContent: args.htmlContent,
        ),
      );
    },
  );
}

class WebViewRouteArgs {
  const WebViewRouteArgs({this.key, this.url, this.title, this.htmlContent});

  final _i9.Key? key;

  final String? url;

  final String? title;

  final String? htmlContent;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url, title: $title, htmlContent: $htmlContent}';
  }
}

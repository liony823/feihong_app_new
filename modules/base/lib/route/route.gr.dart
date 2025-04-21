// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:base/screens/home_screen.dart' as _i1;
import 'package:base/screens/lanuage_screen.dart' as _i2;
import 'package:base/screens/settting_screen.dart' as _i3;
import 'package:base/screens/splash_screen.dart' as _i4;
import 'package:base/screens/webview_screen.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LanguageScreen]
class LanguageRoute extends _i6.PageRouteInfo<void> {
  const LanguageRoute({List<_i6.PageRouteInfo>? children})
    : super(LanguageRoute.name, initialChildren: children);

  static const String name = 'LanguageRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.LanguageScreen();
    },
  );
}

/// generated route for
/// [_i3.SettingScreen]
class SettingRoute extends _i6.PageRouteInfo<void> {
  const SettingRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.SettingScreen();
    },
  );
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashScreen();
    },
  );
}

/// generated route for
/// [_i5.WebViewScreen]
class WebViewRoute extends _i6.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i7.Key? key,
    String? url,
    String? title,
    String? htmlContent,
    List<_i6.PageRouteInfo>? children,
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

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>(
        orElse: () => const WebViewRouteArgs(),
      );
      return _i5.WebViewScreen(
        key: args.key,
        url: args.url,
        title: args.title,
        htmlContent: args.htmlContent,
      );
    },
  );
}

class WebViewRouteArgs {
  const WebViewRouteArgs({this.key, this.url, this.title, this.htmlContent});

  final _i7.Key? key;

  final String? url;

  final String? title;

  final String? htmlContent;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url, title: $title, htmlContent: $htmlContent}';
  }
}

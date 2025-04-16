// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:feihong/ui/home_page.dart' deferred as _i1;
import 'package:feihong/ui/lang_page.dart' deferred as _i2;
import 'package:feihong/ui/login_with_device_page.dart' deferred as _i3;
import 'package:feihong/ui/set_self_info.dart' deferred as _i4;
import 'package:feihong/ui/signin_page.dart' deferred as _i5;
import 'package:feihong/ui/signup_page.dart' deferred as _i6;
import 'package:feihong/ui/splash_page.dart' deferred as _i7;
import 'package:feihong/ui/verify_phone.dart' deferred as _i8;
import 'package:feihong/ui/webview_page.dart' deferred as _i9;
import 'package:flutter/material.dart' as _i11;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i1.loadLibrary, () => _i1.HomePage());
    },
  );
}

/// generated route for
/// [_i2.LangPage]
class LangRoute extends _i10.PageRouteInfo<void> {
  const LangRoute({List<_i10.PageRouteInfo>? children})
    : super(LangRoute.name, initialChildren: children);

  static const String name = 'LangRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i2.loadLibrary, () => _i2.LangPage());
    },
  );
}

/// generated route for
/// [_i3.LoginWithDevicePage]
class LoginWithDeviceRoute extends _i10.PageRouteInfo<void> {
  const LoginWithDeviceRoute({List<_i10.PageRouteInfo>? children})
    : super(LoginWithDeviceRoute.name, initialChildren: children);

  static const String name = 'LoginWithDeviceRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.LoginWithDevicePage(),
      );
    },
  );
}

/// generated route for
/// [_i4.SetSelfInfoPage]
class SetSelfInfoRoute extends _i10.PageRouteInfo<SetSelfInfoRouteArgs> {
  SetSelfInfoRoute({
    _i11.Key? key,
    required String uid,
    required String registerType,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         SetSelfInfoRoute.name,
         args: SetSelfInfoRouteArgs(
           key: key,
           uid: uid,
           registerType: registerType,
         ),
         initialChildren: children,
       );

  static const String name = 'SetSelfInfoRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetSelfInfoRouteArgs>();
      return _i10.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.SetSelfInfoPage(
          key: args.key,
          uid: args.uid,
          registerType: args.registerType,
        ),
      );
    },
  );
}

class SetSelfInfoRouteArgs {
  const SetSelfInfoRouteArgs({
    this.key,
    required this.uid,
    required this.registerType,
  });

  final _i11.Key? key;

  final String uid;

  final String registerType;

  @override
  String toString() {
    return 'SetSelfInfoRouteArgs{key: $key, uid: $uid, registerType: $registerType}';
  }
}

/// generated route for
/// [_i5.SigninPage]
class SigninRoute extends _i10.PageRouteInfo<void> {
  const SigninRoute({List<_i10.PageRouteInfo>? children})
    : super(SigninRoute.name, initialChildren: children);

  static const String name = 'SigninRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i5.loadLibrary, () => _i5.SigninPage());
    },
  );
}

/// generated route for
/// [_i6.SignupPage]
class SignupRoute extends _i10.PageRouteInfo<void> {
  const SignupRoute({List<_i10.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i6.loadLibrary, () => _i6.SignupPage());
    },
  );
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i7.loadLibrary, () => _i7.SplashPage());
    },
  );
}

/// generated route for
/// [_i8.VerifyPhonePage]
class VerifyPhoneRoute extends _i10.PageRouteInfo<VerifyPhoneRouteArgs> {
  VerifyPhoneRoute({
    _i11.Key? key,
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         VerifyPhoneRoute.name,
         args: VerifyPhoneRouteArgs(
           key: key,
           phone: phone,
           zone: zone,
           password: password,
           usedFor: usedFor,
           inviteCode: inviteCode,
         ),
         initialChildren: children,
       );

  static const String name = 'VerifyPhoneRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPhoneRouteArgs>();
      return _i10.DeferredWidget(
        _i8.loadLibrary,
        () => _i8.VerifyPhonePage(
          key: args.key,
          phone: args.phone,
          zone: args.zone,
          password: args.password,
          usedFor: args.usedFor,
          inviteCode: args.inviteCode,
        ),
      );
    },
  );
}

class VerifyPhoneRouteArgs {
  const VerifyPhoneRouteArgs({
    this.key,
    required this.phone,
    required this.zone,
    required this.password,
    required this.usedFor,
    this.inviteCode,
  });

  final _i11.Key? key;

  final String phone;

  final String zone;

  final String password;

  final int usedFor;

  final String? inviteCode;

  @override
  String toString() {
    return 'VerifyPhoneRouteArgs{key: $key, phone: $phone, zone: $zone, password: $password, usedFor: $usedFor, inviteCode: $inviteCode}';
  }
}

/// generated route for
/// [_i9.WebViewPage]
class WebViewRoute extends _i10.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i11.Key? key,
    String? url,
    String? title,
    String? htmlContent,
    List<_i10.PageRouteInfo>? children,
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

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>(
        orElse: () => const WebViewRouteArgs(),
      );
      return _i10.DeferredWidget(
        _i9.loadLibrary,
        () => _i9.WebViewPage(
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

  final _i11.Key? key;

  final String? url;

  final String? title;

  final String? htmlContent;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url, title: $title, htmlContent: $htmlContent}';
  }
}

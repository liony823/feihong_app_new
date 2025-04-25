// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:base/screens/home_screen.dart' as _i1;
import 'package:base/screens/lanuage_screen.dart' as _i2;
import 'package:base/screens/profile/personal_qrcode_screen.dart' as _i3;
import 'package:base/screens/profile/set_avatar_screen.dart' as _i5;
import 'package:base/screens/profile/set_gender_screen.dart' as _i6;
import 'package:base/screens/profile/set_intro_screen.dart' as _i7;
import 'package:base/screens/profile/set_nickname_screen.dart' as _i8;
import 'package:base/screens/profile_screen.dart' as _i4;
import 'package:base/screens/settting_screen.dart' as _i9;
import 'package:base/screens/webview_screen.dart' as _i10;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.LanguageScreen]
class LanguageRoute extends _i11.PageRouteInfo<void> {
  const LanguageRoute({List<_i11.PageRouteInfo>? children})
    : super(LanguageRoute.name, initialChildren: children);

  static const String name = 'LanguageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.LanguageScreen();
    },
  );
}

/// generated route for
/// [_i3.PersonalQrcodeScreen]
class PersonalQrcodeRoute extends _i11.PageRouteInfo<PersonalQrcodeRouteArgs> {
  PersonalQrcodeRoute({
    _i12.Key? key,
    required String uid,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         PersonalQrcodeRoute.name,
         args: PersonalQrcodeRouteArgs(key: key, uid: uid),
         initialChildren: children,
       );

  static const String name = 'PersonalQrcodeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PersonalQrcodeRouteArgs>();
      return _i3.PersonalQrcodeScreen(key: args.key, uid: args.uid);
    },
  );
}

class PersonalQrcodeRouteArgs {
  const PersonalQrcodeRouteArgs({this.key, required this.uid});

  final _i12.Key? key;

  final String uid;

  @override
  String toString() {
    return 'PersonalQrcodeRouteArgs{key: $key, uid: $uid}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i5.SetAvatarScreen]
class SetAvatarRoute extends _i11.PageRouteInfo<SetAvatarRouteArgs> {
  SetAvatarRoute({
    _i12.Key? key,
    required String avatar,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         SetAvatarRoute.name,
         args: SetAvatarRouteArgs(key: key, avatar: avatar),
         initialChildren: children,
       );

  static const String name = 'SetAvatarRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetAvatarRouteArgs>();
      return _i5.SetAvatarScreen(key: args.key, avatar: args.avatar);
    },
  );
}

class SetAvatarRouteArgs {
  const SetAvatarRouteArgs({this.key, required this.avatar});

  final _i12.Key? key;

  final String avatar;

  @override
  String toString() {
    return 'SetAvatarRouteArgs{key: $key, avatar: $avatar}';
  }
}

/// generated route for
/// [_i6.SetGenderScreen]
class SetGenderRoute extends _i11.PageRouteInfo<SetGenderRouteArgs> {
  SetGenderRoute({
    _i12.Key? key,
    required int gender,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         SetGenderRoute.name,
         args: SetGenderRouteArgs(key: key, gender: gender),
         initialChildren: children,
       );

  static const String name = 'SetGenderRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetGenderRouteArgs>();
      return _i6.SetGenderScreen(key: args.key, gender: args.gender);
    },
  );
}

class SetGenderRouteArgs {
  const SetGenderRouteArgs({this.key, required this.gender});

  final _i12.Key? key;

  final int gender;

  @override
  String toString() {
    return 'SetGenderRouteArgs{key: $key, gender: $gender}';
  }
}

/// generated route for
/// [_i7.SetIntroScreen]
class SetIntroRoute extends _i11.PageRouteInfo<SetIntroRouteArgs> {
  SetIntroRoute({
    _i12.Key? key,
    required String intro,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         SetIntroRoute.name,
         args: SetIntroRouteArgs(key: key, intro: intro),
         initialChildren: children,
       );

  static const String name = 'SetIntroRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetIntroRouteArgs>();
      return _i7.SetIntroScreen(key: args.key, intro: args.intro);
    },
  );
}

class SetIntroRouteArgs {
  const SetIntroRouteArgs({this.key, required this.intro});

  final _i12.Key? key;

  final String intro;

  @override
  String toString() {
    return 'SetIntroRouteArgs{key: $key, intro: $intro}';
  }
}

/// generated route for
/// [_i8.SetNicknameScreen]
class SetNicknameRoute extends _i11.PageRouteInfo<SetNicknameRouteArgs> {
  SetNicknameRoute({
    _i12.Key? key,
    required String nickname,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         SetNicknameRoute.name,
         args: SetNicknameRouteArgs(key: key, nickname: nickname),
         initialChildren: children,
       );

  static const String name = 'SetNicknameRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetNicknameRouteArgs>();
      return _i8.SetNicknameScreen(key: args.key, nickname: args.nickname);
    },
  );
}

class SetNicknameRouteArgs {
  const SetNicknameRouteArgs({this.key, required this.nickname});

  final _i12.Key? key;

  final String nickname;

  @override
  String toString() {
    return 'SetNicknameRouteArgs{key: $key, nickname: $nickname}';
  }
}

/// generated route for
/// [_i9.SettingScreen]
class SettingRoute extends _i11.PageRouteInfo<void> {
  const SettingRoute({List<_i11.PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SettingScreen();
    },
  );
}

/// generated route for
/// [_i10.WebViewScreen]
class WebViewRoute extends _i11.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    _i12.Key? key,
    String? url,
    String? title,
    String? htmlContent,
    List<_i11.PageRouteInfo>? children,
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

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewRouteArgs>(
        orElse: () => const WebViewRouteArgs(),
      );
      return _i10.WebViewScreen(
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

  final _i12.Key? key;

  final String? url;

  final String? title;

  final String? htmlContent;

  @override
  String toString() {
    return 'WebViewRouteArgs{key: $key, url: $url, title: $title, htmlContent: $htmlContent}';
  }
}

// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth/screens/account_screen.dart' as _i1;
import 'package:auth/screens/login_screen.dart' as _i2;
import 'package:auth/screens/login_with_auto_screen.dart' as _i3;
import 'package:auth/screens/register_screen.dart' as _i4;
import 'package:auth/screens/set_self_info_screen.dart' as _i5;
import 'package:auth/screens/set_self_security_screen.dart' as _i6;
import 'package:auth/screens/verify_phone_screen.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginWithDeviceScreen]
class LoginWithDeviceRoute extends _i8.PageRouteInfo<void> {
  const LoginWithDeviceRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginWithDeviceRoute.name, initialChildren: children);

  static const String name = 'LoginWithDeviceRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginWithDeviceScreen();
    },
  );
}

/// generated route for
/// [_i4.RegisterScreen]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.RegisterScreen();
    },
  );
}

/// generated route for
/// [_i5.SetSelfInfoScreen]
class SetSelfInfoRoute extends _i8.PageRouteInfo<SetSelfInfoRouteArgs> {
  SetSelfInfoRoute({
    _i9.Key? key,
    required String uid,
    required String registerType,
    List<_i8.PageRouteInfo>? children,
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetSelfInfoRouteArgs>();
      return _i5.SetSelfInfoScreen(
        key: args.key,
        uid: args.uid,
        registerType: args.registerType,
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

  final _i9.Key? key;

  final String uid;

  final String registerType;

  @override
  String toString() {
    return 'SetSelfInfoRouteArgs{key: $key, uid: $uid, registerType: $registerType}';
  }
}

/// generated route for
/// [_i6.SetSelfSecurityScreen]
class SetSelfSecurityRoute extends _i8.PageRouteInfo<void> {
  const SetSelfSecurityRoute({List<_i8.PageRouteInfo>? children})
    : super(SetSelfSecurityRoute.name, initialChildren: children);

  static const String name = 'SetSelfSecurityRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SetSelfSecurityScreen();
    },
  );
}

/// generated route for
/// [_i7.VerifyPhoneScreen]
class VerifyPhoneRoute extends _i8.PageRouteInfo<VerifyPhoneRouteArgs> {
  VerifyPhoneRoute({
    _i9.Key? key,
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
    List<_i8.PageRouteInfo>? children,
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

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerifyPhoneRouteArgs>();
      return _i7.VerifyPhoneScreen(
        key: args.key,
        phone: args.phone,
        zone: args.zone,
        password: args.password,
        usedFor: args.usedFor,
        inviteCode: args.inviteCode,
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

  final _i9.Key? key;

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

import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../components/zone_sheet.dart';
import '../services/auth_service.dart';

part 'login_provider.g.dart';

class LoginState {
  final String zone;
  final bool isChecked;
  LoginState({
    required this.zone,
    required this.isChecked,
  });

  LoginState copyWith({
    bool? isChecked,
    String? zone,
  }) {
    return LoginState(
      zone: zone ?? this.zone,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

@riverpod
class LoginController extends _$LoginController {
  final formKey = GlobalKey<FormBuilderState>();
  AuthService get _authService => ref.read(authServiceProvider);

  @override
  LoginState build() {
    final code = ref.watch(getSIMCountryCodeProvider);

    return LoginState(
      isChecked: true,
      zone: code.value ?? '',
    );
  }

  void back(){
    Global.context?.router.pop();
  }

  void signin(String type) {
    final isCheck = _checkForm(type);
    if (!isCheck) {
      return;
    }
    if (type == 'username') {
      _signinWithUsername();
    } else {
      _signinWithPhone();
    }
  }

  void signinWithDevice() async {
    
    // 自动生成6位随机字符作为用户名和密码
    final random = Random();
    final chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    String username = '';
    String password = '';
    for (int i = 0; i < 8; i++) {
      username += chars[random.nextInt(chars.length)];
      password += chars[random.nextInt(chars.length)];
    }

    final result = await LoadingView.singleton.wrap(
      asyncFunction: () => _authService.loginByUsername(
        username: username,
        password: password,
        deviceId: CommonModule.deviceID,
        deviceName: CommonModule.deviceName,
        deviceModel: CommonModule.deviceModel,
      ),
    );

    if (result != null) {
      Global.context!.router.replacePath(Routes.home);
    }
  }

  bool _checkForm(String type) {
    final formState = formKey.currentState;
    if (formState == null) {
      return false;
    }
    if (formState.saveAndValidate()) {
      final context = Global.context;
      if (type == 'username') {
        final username = formState.getRawValue('username') as String;
        final password = formState.getRawValue('password') as String;
        if (username.isEmpty || password.isEmpty) {
          ToastUtil.simpleToast(
              context?.t.c.login.usernameOrPasswordEmpty ?? '');
          return false;
        }
      } else {
        final phone = formState.getRawValue('phone') as String;
        final password = formState.getRawValue('password') as String;
        if (phone.isEmpty || password.isEmpty) {
          ToastUtil.simpleToast(context?.t.c.login.phoneOrPasswordEmpty ?? '');
          return false;
        }
      }
    }
    return true;
  }

  void _signinWithUsername() async {
    final username = formKey.currentState?.getRawValue('username');
    final password = formKey.currentState?.getRawValue('password');
    final result = await LoadingView.singleton.wrap(
      asyncFunction: () => _authService.loginByUsername(
          username: username,
          password: password,
          deviceId: CommonModule.deviceID,
          deviceName: CommonModule.deviceName,
          deviceModel: CommonModule.deviceModel,
        ),
    );
    if (result != null) {
      Global.context!.router.replacePath(Routes.home);
    }
  }

  void _signinWithPhone() async {
    
    final phone = formKey.currentState?.getRawValue('phone') as String;
    final password = formKey.currentState?.getRawValue('password') as String;
    final result = await LoadingView.singleton.wrap(
      asyncFunction: () => _authService.loginByPhone(
          zone: state.zone,
          phone: phone,
          password: password,
          deviceId: CommonModule.deviceID,
          deviceName: CommonModule.deviceName,
          deviceModel: CommonModule.deviceModel,
        ),
    );
    if (result != null) {
      Global.context!.router.replacePath(Routes.home);
    }
  }

  void handleChangeChecked(bool? value) {
    state = state.copyWith(isChecked: value);
  }

  void onOpenZonePicker() async {
    try {
      final countries = await ref.watch(getCountriesProvider.future);
      final zone = await showCupertinoSheet<String>(
        context: Global.context!,
        useNestedNavigation: true,
        pageBuilder: (context) => ZoneSheet(
          zone: state.zone,
          countries: countries,
        ),
      );
      if (zone != null) {
        state = state.copyWith(zone: "+$zone");
      }
    } catch (e, s) {
      AppLogger.e(e, s);
    }
  }

  void toSignup() {
    Global.context!.router.pushPath(Routes.register);
  }

  void toForgotPassword() {
    Global.context!.router.pushPath(Routes.forgotPassword);
  }
}

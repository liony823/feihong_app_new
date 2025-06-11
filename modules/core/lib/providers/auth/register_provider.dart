import 'package:auth/route/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/sheet/zone_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_provider.g.dart';

class RegisterState {
  final String zone;
  final bool isChecked;

  RegisterState({
    required this.zone,
    required this.isChecked,
  });

  RegisterState copyWith({
    bool? isChecked,
    String? zone,
  }) {
    return RegisterState(
      zone: zone ?? this.zone,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

@riverpod
class RegisterController extends _$RegisterController {
  final formKey = GlobalKey<FormBuilderState>();
  AuthService get _authService => ref.read(authServiceProvider);

  @override
  RegisterState build() {
    final code = ref.watch(getSIMCountryCodeProvider);
    return RegisterState(zone: code.value ?? '', isChecked: true);
  }

  void back() {
    Global.context?.router.pop();
  }

  void register(String type) {
    final isCheck = _checkForm(type);
    if (!isCheck) {
      return;
    }
    if (type == 'username') {
      _registerWithUsername();
    } else {
      _registerWithPhone();
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
        if (username.isEmpty) {
          ToastUtil.simpleToast(context?.t.c.register.usernameEmpty ?? '');
          return false;
        }
        if (!Regex.USERNAME_PATTERN.hasMatch(username)) {
          ToastUtil.simpleToast(context?.t.c.register.usernameError ?? '');
          return false;
        }
      } else {
        final phone = formState.getRawValue('phone') as String;
        if (phone.isEmpty) {
          ToastUtil.simpleToast(context?.t.c.login.phoneOrPasswordEmpty ?? '');
          return false;
        }
      }

      final password = formState.getRawValue('password') as String;
      if (password.isEmpty) {
        ToastUtil.simpleToast(context?.t.c.register.passwordEmpty ?? '');
        return false;
      }
      if (!Regex.PASSWORD_PATTERN.hasMatch(password)) {
        ToastUtil.simpleToast(context?.t.c.register.passwordError ?? '');
        return false;
      }
      final confirmPassword =
          formState.getRawValue('confirmPassword') as String;
      if (confirmPassword.isEmpty) {
        ToastUtil.simpleToast(context?.t.c.register.confirmPasswordEmpty ?? '');
        return false;
      }
      if (password != confirmPassword) {
        ToastUtil.simpleToast(context?.t.c.register.confirmPasswordError ?? '');
        return false;
      }
    }
    return true;
  }

  void _registerWithUsername() async {
    final username = formKey.currentState?.getRawValue('username');
    final password = formKey.currentState?.getRawValue('password');
    final inviteCode =
        formKey.currentState?.getRawValue('inviteCode') as String?;
    try {
      final result = await LoadingView.singleton.wrap(
          asyncFunction: () => _authService.registerByUsername(
                username: username,
                password: password,
                inviteCode: inviteCode,
                deviceId: AppConstants.deviceID,
                deviceName: AppConstants.deviceName,
                deviceModel: AppConstants.deviceModel,
              ));
      if (result == null) {
        return;
      }

      Global.context?.router.popAndPush(SetSelfInfoRoute(
        uid: result.uid,
        registerType: 'username',
      ));
    } catch (e, s) {
      ToastUtil.simpleToast("error: $e, stack: $s");
      AppLogger.w("error: $e, stack: $s");
    }
  }

  void _registerWithPhone() async {
    final phone = formKey.currentState?.getRawValue('phone') as String;
    final password = formKey.currentState?.getRawValue('password') as String;
    final inviteCode =
        formKey.currentState?.getRawValue('inviteCode') as String?;
    try {
      final res = await LoadingView.singleton.wrap(
        asyncFunction: () => _requestSmsCode(
          phone: phone,
          zone: state.zone,
        ),
      );
      final context = Global.context;
      ToastUtil.simpleToast(context?.t.c.verify.sendSuccess ?? '');
      if (res) {
        context?.router.push(VerifyPhoneRoute(
          phone: phone,
          zone: state.zone,
          password: password,
          inviteCode: inviteCode,
          usedFor: 1,
        ));
      }
    } catch (e) {
      AppLogger.w(e);
    }
  }

  Future<bool> _requestSmsCode({
    required String phone,
    required String zone,
  }) {
    final authService = ref.watch(authServiceProvider);
    return LoadingView.singleton.wrap(
      asyncFunction: () => authService.sendRegisterVerificationCode(
        phone: phone,
        zone: zone,
      ),
    );
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

  void handleChangeChecked(bool? value) {
    state = state.copyWith(isChecked: value);
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/config.dart';
import 'package:feihong/helper/zone_picker.dart';
import 'package:feihong/provider/country.dart';
import 'package:feihong/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup_provider.g.dart';

class SignupState {
  final String zone;
  final bool isChecked;

  SignupState({
    required this.zone,
    required this.isChecked,
  });

  SignupState copyWith({
    bool? isChecked,
    String? zone,
  }) {
    return SignupState(
      zone: zone ?? this.zone,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

@riverpod
class SignupController extends _$SignupController {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  SignupState build() {
    final code = ref.watch(getSIMCountryCodeProvider);
    return SignupState(zone: code.value ?? '', isChecked: true);
  }

  void signup(String type) {
    final isCheck = _checkForm(type);
    if (!isCheck) {
      return;
    }
    if (type == 'username') {
      _signupWithUsername();
    } else {
      _signupWithPhone();
    }
  }

  void signupWithDevice() {}

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
          Utils.simpleToast(context?.t.c.register.usernameEmpty ?? '');
          return false;
        }
        if (!usernameReg.hasMatch(username)) {
          Utils.simpleToast(context?.t.c.register.usernameError ?? '');
          return false;
        }
      } else {
        final phone = formState.getRawValue('phone') as String;
        if (phone.isEmpty) {
          Utils.simpleToast(context?.t.c.login.phoneOrPasswordEmpty ?? '');
          return false;
        }
      }

      final password = formState.getRawValue('password') as String;
      if (password.isEmpty) {
        Utils.simpleToast(context?.t.c.register.passwordEmpty ?? '');
        return false;
      }
      if (!passwordReg.hasMatch(password)) {
        Utils.simpleToast(context?.t.c.register.passwordError ?? '');
        return false;
      }
      final confirmPassword =
          formState.getRawValue('confirmPassword') as String;
      if (confirmPassword.isEmpty) {
        Utils.simpleToast(context?.t.c.register.confirmPasswordEmpty ?? '');
        return false;
      }
      if (password != confirmPassword) {
        Utils.simpleToast(context?.t.c.register.confirmPasswordError ?? '');
        return false;
      }
    }
    return true;
  }

  void _signupWithUsername() async {
    final username = formKey.currentState?.getRawValue('username');
    final password = formKey.currentState?.getRawValue('password');
    final inviteCode =
        formKey.currentState?.getRawValue('inviteCode') as String?;
    try {
      final result = await LoadingView.singleton.wrap(
        asyncFunction: () => Apis.registerByUsername(
          username: username,
          password: password,
          inviteCode: inviteCode,
          deviceId: Config.deviceID,
          deviceName: Config.deviceName,
          deviceModel: Config.deviceModel,
        ),
      );
      if (result == null) {
        return;
      }
      DataSp.setUserCertification(result);
      Global.context?.router.popAndPush(SetSelfInfoRoute(
        uid: result.uid,
        registerType: 'username',
      ));
    } catch (e, s) {
      Utils.toast(description: "error: $e, stack: $s");
      Logger.print("error: $e, stack: $s");
    }
  }

  void _signupWithPhone() async {
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
      Utils.simpleToast(context?.t.c.verify.sendSuccess ?? '');
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
      Logger.print(e);
    }
  }

  Future<bool> _requestSmsCode({
    required String phone,
    required String zone,
  }) =>
      LoadingView.singleton.wrap(
        asyncFunction: () => Apis.sendRegisterSmsCode(
          phone: phone,
          zone: zone,
        ),
      );

  void onOpenZonePicker() async {
    try {
      final countries = await ref.watch(getCountryListProvider.future);
      final zone =
          await ZonePicker.showPicker(Global.context!, state.zone, countries);
      if (zone != null) {
        state = state.copyWith(zone: "+$zone");
      }
    } catch (e) {
      Logger.print(e);
    }
  }

  void handleChangeChecked(bool? value) {
    state = state.copyWith(isChecked: value);
  }
}

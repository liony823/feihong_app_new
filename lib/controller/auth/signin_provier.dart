import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/config.dart';
import 'package:feihong/helper/zone_picker.dart';
import 'package:feihong/provider/country.dart';
import 'package:feihong/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_provier.g.dart';

class SigninState {
  final String zone;
  final bool isChecked;
  SigninState({
    required this.zone,
    required this.isChecked,
  });

  SigninState copyWith({
    bool? isChecked,
    String? zone,
  }) {
    return SigninState(
      zone: zone ?? this.zone,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

@riverpod
class SigninController extends _$SigninController {
  final formKey = GlobalKey<FormBuilderState>();
  @override
  SigninState build() {
    final code = ref.watch(getSIMCountryCodeProvider);

    return SigninState(isChecked: true, zone: code.value ?? '');
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

  void signinWithDevice() {}

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
          Utils.simpleToast(context?.t.c.login.usernameOrPasswordEmpty ?? '');
          return false;
        }
      } else {
        final phone = formState.getRawValue('phone') as String;
        final password = formState.getRawValue('password') as String;
        if (phone.isEmpty || password.isEmpty) {
          Utils.simpleToast(context?.t.c.login.phoneOrPasswordEmpty ?? '');
          return false;
        }
      }
    }
    return true;
  }

  void _signinWithUsername() async {
    final username = formKey.currentState?.getRawValue('username');
    final password = formKey.currentState?.getRawValue('password');
    try {
      await LoadingView.singleton.wrap(
        asyncFunction: () => Apis.loginByUsername(
          username: username,
          password: password,
          deviceId: Config.deviceID,
          deviceName: Config.deviceName,
          deviceModel: Config.deviceModel,
        ),
      );
    } catch (e) {
      Logger.print(e);
    }
  }

  void _signinWithPhone() async {
    final phone = formKey.currentState?.getRawValue('phone');
    final password = formKey.currentState?.getRawValue('password');
    final username = "${state.zone}$phone".replaceAll('+', '');
    try {
      await LoadingView.singleton.wrap(
        asyncFunction: () => Apis.loginByUsername(
          username: username,
          password: password,
          deviceId: Config.deviceID,
          deviceName: Config.deviceName,
          deviceModel: Config.deviceModel,
        ),
      );
    } catch (e) {
      Logger.print(e);
    }
  }

  void handleChangeChecked(bool? value) {
    state = state.copyWith(isChecked: value);
  }

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

  void toSignup() {
    Global.context!.router.push(const SignupRoute());
  }
}

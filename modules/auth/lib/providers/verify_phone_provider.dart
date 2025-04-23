import 'dart:async';

import 'package:auth/route/route.gr.dart';
import 'package:auth/services/auth_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:contact/contact.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_phone_provider.g.dart';

class VerifyPhoneState {
  final String phone;
  final String zone;
  final String password;
  final int usedFor; //  1: 手机注册 2: 忘记密码 3: 手机登录
  final bool enabled;
  final bool loading;
  final String? inviteCode;
  VerifyPhoneState({
    required this.phone,
    required this.zone,
    required this.password,
    required this.usedFor,
    required this.enabled,
    required this.loading,
    this.inviteCode,
  });

  VerifyPhoneState copyWith({
    String? phone,
    String? zone,
    String? password,
    String? inviteCode,
    int? usedFor,
    bool? enabled,
    bool? loading,
  }) {
    return VerifyPhoneState(
      phone: phone ?? this.phone,
      zone: zone ?? this.zone,
      password: password ?? this.password,
      inviteCode: inviteCode ?? this.inviteCode,
      usedFor: usedFor ?? this.usedFor,
      enabled: enabled ?? this.enabled,
      loading: loading ?? this.loading,
    );
  }
}

@riverpod
class VerifyPhoneController extends _$VerifyPhoneController {
  final codeErrorCtrl = StreamController<ErrorAnimationType>();
  final codeEditCtrl = TextEditingController();
  @override
  VerifyPhoneState build({
    required String phone,
    required String zone,
    required String password,
    required int usedFor,
    String? inviteCode,
  }) {
    ref.onDispose(() {
      codeErrorCtrl.close();
    });
    return VerifyPhoneState(
      phone: phone,
      zone: zone,
      password: password,
      inviteCode: inviteCode,
      usedFor: usedFor,
      enabled: false,
      loading: false,
    );
  }

  void shake() {
    codeErrorCtrl.add(ErrorAnimationType.shake);
  }

  void clear() {
    codeEditCtrl.clear();
  }

  void completed(String code) {
    try {
      state = state.copyWith(
        loading: true,
      );
      if (state.usedFor == 1) {
        _register(code);
      }
    } catch (e) {
      shake();
      AppLogger.w(e);
    } finally {
      state = state.copyWith(
        loading: false,
      );
    }
  }

  Future _register(String code) async {
    try {
      final authService = ref.watch(authServiceProvider);
      final result = await LoadingView.singleton.wrap(
        asyncFunction: () => authService.registerByPhone(
          phone: state.phone,
          zone: state.zone,
          code: code,
          inviteCode: state.inviteCode,
          password: state.password,
          deviceId: CommonModule.deviceID,
          deviceName: CommonModule.deviceName,
          deviceModel: CommonModule.deviceModel,
        ),
      );
      if (result == null) {
        return;
      }
      Global.context?.router.popAndPush(SetSelfInfoRoute(
        uid: result.uid,
        registerType: 'phone',
      ));
    } catch (e, s) {
      AppLogger.w("$e, $s");
      ToastUtil.simpleToast("error: $e, stack: $s");
    }
  }

  Future<bool> requestSmsCode({
    required String phone,
    required String zone,
  }) async {
    final authService = ref.watch(authServiceProvider);
    return await authService.sendRegisterVerificationCode(
      phone: phone,
      zone: zone,
    );
  }
}

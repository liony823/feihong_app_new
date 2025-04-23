import 'package:auth/services/auth_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_self_info_provider.g.dart';

class SetSelfInfoState {
  final String avatar;
  final int sex;
  final String registerType;
  final GlobalKey<FormBuilderState> formKey;

  SetSelfInfoState({
    required this.avatar,
    required this.sex,
    required this.registerType,
    required this.formKey,
  });

  SetSelfInfoState copyWith({
    String? avatar,
    int? sex,
    String? registerType,
    FocusNode? focusNode,
    GlobalKey<FormBuilderState>? formKey,
  }) {
    return SetSelfInfoState(
      avatar: avatar ?? this.avatar,
      sex: sex ?? this.sex,
      registerType: registerType ?? this.registerType,
      formKey: formKey ?? this.formKey,
    );
  }
}

@riverpod
class SetSelfInfo extends _$SetSelfInfo {
  @override
  SetSelfInfoState build({
    required String uid,
    required String registerType,
  }) {
    final formKey = GlobalKey<FormBuilderState>();

    return SetSelfInfoState(
      avatar: '',
      sex: 1,
      registerType: registerType,
      formKey: formKey,
    );
  }

  void openPhotoSheet() {
    ViewHelper.openPhotoSheet(
      fileType: FileType.avatar,
      aspectRatioX: 1,
      aspectRatioY: 1,
      onData: (path, url) {
        if (Utils.isEmptyOrNull(url)) {
          return;
        }
        state = state.copyWith(avatar: url);
      },
    );
  }

  void openGenderSheet() {
    ViewHelper.openSexPicker(
      initialValue: state.sex,
      onConfirm: (sex) {
        state.formKey.currentState?.fields['sex']!
            .didChange(Global.context!.t.c.gender[sex]);
        state = state.copyWith(sex: sex);
      },
    );
  }

  void submit() async {
    final form = state.formKey.currentState;
    if (form == null || !form.saveAndValidate()) {
      return;
    }
    // final username = form.getRawValue('username') as String;
    final nickname = form.getRawValue('nickname') as String;
    // if (username.isEmpty) {
    //   Utils.simpleToast(Global.context!.t.c.profile.plsEnterUsername);
    //   return;
    // }
    if (nickname.isEmpty) {
      ToastUtil.simpleToast(Global.context!.t.c.setSelfInfo.plsEnterNickname);
      return;
    }
    try {
      final currentUser = await ref.watch(getCurrentUserProvider(uid).future);
      final authService = ref.watch(authServiceProvider);

      if (currentUser?.name != nickname) {
        LoadingView.singleton.wrap(asyncFunction: () async {
          await authService.updateUserProfile(
            name: nickname,
          );

          ref.invalidate(getCurrentUserProvider(uid));
        });
      }
      if (registerType == 'username') {
        Global.context!.router.pushPath(Routes.setSelfSecurity);
      } else {
        Global.context!.router.replaceAll([], updateExistingRoutes: false);
        Global.context!.router.pushPath(Routes.home);
      }
    } catch (e) {
      AppLogger.e('设置用户信息失败', e);
    }
  }
}

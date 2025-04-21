import 'package:auth/route/route.gr.dart';
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
  final String registerType;

  SetSelfInfoState({
    required this.avatar,
    required this.registerType,
  });

  SetSelfInfoState copyWith({
    String? avatar,
    String? registerType,
  }) {
    return SetSelfInfoState(
      avatar: avatar ?? this.avatar,
      registerType: registerType ?? this.registerType,
    );
  }
}

@riverpod
class SetSelfInfo extends _$SetSelfInfo {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  SetSelfInfoState build({
    required String uid,
    required String registerType,
  }) {
    return SetSelfInfoState(
      avatar: '',
      registerType: registerType,
    );
  }

  void openPhotoSheet() {
    ViewHelper.openPhotoSheet(
      onData: (path, url) {
        state = state.copyWith(avatar: url);
      },
      fileType: FileType.avatar,
    );
  }

  void submit() async {
    final form = formKey.currentState;
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
      ToastUtil.simpleToast(Global.context!.t.c.profile.plsEnterNickname);
      return;
    }
    try {
      final currentUser = await ref.watch(getCurrentUserProvider(uid).future);
      final authService = ref.watch(authServiceProvider);

      if (currentUser?.name != nickname) {
        LoadingView.singleton.wrap(
            asyncFunction: () => authService.updateUserProfile(
                  name: nickname,
                ));
      }
      if (registerType == 'username') {
        Global.context!.router.popAndPush(const SetSelfSecurityRoute());
      } else {
        Global.context!.router.replaceAll([], updateExistingRoutes: false);
        Global.context!.router.pushPath(Routes.home);
      }
    } catch (e) {
      AppLogger.e('设置用户信息失败', e);
    }
  }
}

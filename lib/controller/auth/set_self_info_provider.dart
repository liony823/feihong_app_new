import 'package:common/common.dart';
import 'package:feihong/controller/api/api.dart';
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
    ViewUtils.openPhotoSheet(
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

    try {
      final currentUser = await ref.watch(getCurrentUserProvider(uid).future);
      final username = form.getRawValue('username') as String;
      final nickname = form.getRawValue('nickname') as String;

      if (currentUser.username != username || currentUser.name != nickname) {
        await Apis.updateCurrentUser(
          shortNo: username,
          name: nickname,
        );
      }
      //TODO 跳转到首页
    } catch (e) {
      Logger.print('设置用户信息失败$e');
    }
  }
}

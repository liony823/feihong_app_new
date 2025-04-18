import 'package:auth/services/auth_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'set_self_security_provider.g.dart';

class SetSelfSecurityState {}

@riverpod
class SetSelfSecurityController extends _$SetSelfSecurityController {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  SetSelfSecurityState build() {
    return SetSelfSecurityState();
  }

  void submit() async {
    final form = formKey.currentState;
    if (form == null || !form.saveAndValidate()) {
      return;
    }

    final question = form.value['question'] as String;
    final answer = form.value['answer'] as String;
    final context = formKey.currentContext;
    if (question.isEmpty || answer.isEmpty) {
      ToastUtil.simpleToast(context!.t.c.setSelfSecurity.questionOrAnswerEmpty);
      return;
    }
    final authService = ref.watch(authServiceProvider);
    final result = await LoadingView.singleton.wrap(
        asyncFunction: () => authService.setSecurityQuestion(
              question: question,
              answer: answer,
            ));
    if (result) {
      ToastUtil.simpleToast(context!.t.c.setSelfSecurity.submitSuccess);
      Global.context!.router.replacePath(Routes.home);
    }
  }
}

import 'package:core/providers/auth/set_self_security_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class SetSelfSecurityScreen extends HookConsumerWidget {
  const SetSelfSecurityScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(setSelfSecurityControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: context.t.c.setSelfSecurity.title.appBarText,
      ),
      body: FormBuilder(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          child: Column(
            spacing: 24.w,
            children: [
              _buildQuestion(context),
              _buildAnswer(context),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: controller.submit,
                  child: Text(context.t.c.setSelfSecurity.submit),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestion(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        _buildLabel(context, context.t.c.setSelfSecurity.question,
            EvaIcons.question_mark_circle_outline),
        Input(
          name: 'question',
          placeholder: context.t.c.setSelfSecurity.question,
          textInputAction: TextInputAction.next,
        )
      ],
    );
  }

  Widget _buildAnswer(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        _buildLabel(
            context, context.t.c.setSelfSecurity.answer, EvaIcons.lock_outline),
        Input(
          name: 'answer',
          placeholder: context.t.c.setSelfSecurity.answer,
          textInputAction: TextInputAction.done,
        )
      ],
    );
  }

  Widget _buildLabel(
    BuildContext context,
    String label,
    IconData icon,
  ) {
    return Row(
      spacing: 6.w,
      children: [
        Icon(
          icon,
          size: 16.sp,
        ),
        Text(label).fontSize(16.sp).fontWeight(FontWeight.w500),
      ],
    );
  }
}

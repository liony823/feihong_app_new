import 'package:auth/components/swap_lang_button.dart';
import 'package:auth/components/touch_close_keyboard.dart';
import 'package:auth/components/user_agreement_checkbox.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../hooks/use_obscure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

@RoutePage()
class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerControllerProvider);
    final controller = ref.watch(registerControllerProvider.notifier);
    final appConfig = ref.watch(getAppConfigProvider);
    final obscure = useObscure(true);
    final tabController = useTabController(
      initialLength: appConfig.value?.loginType == 3 ? 2 : 1,
    );
    final routeStackLength = context.router.stack.length;
    return TouchCloseSoftKeyboard(
      isGradientBg: true,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: (context.t.c.register.title).appBarText,
            centerTitle: false,
            leadingWidth: 72.w,
            leading: Visibility(
              visible: routeStackLength > 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: IconButton(
                  onPressed: controller.back,
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.black26,
                    shape: const CircleBorder(),
                  ),
                  icon: const Icon(
                    EvaIcons.close_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            actions: [SwapLangButton()],
          ),
          body: SingleChildScrollView(
            child: Column(
              spacing: 24.w,
              children: [
                10.verticalSpace,
                _buildForm(
                  context,
                  ref: ref,
                  obscure: obscure,
                  tabController: tabController,
                  registerInviteOn: appConfig.value?.registerInviteOn,
                  loginType: appConfig.value?.loginType,
                ),
                UserAgreementCheckbox(
                  isChecked: state.isChecked,
                  onCheck: controller.handleChangeChecked,
                  userAgreementContent:
                      appConfig.value?.userAgreementContent ?? '',
                  privacyPolicyContent:
                      appConfig.value?.privacyPolicyContent ?? '',
                ),
              ],
            ),
          )),
    );
  }

  Widget _buildForm(BuildContext context,
      {required WidgetRef ref,
      ValueNotifier<bool>? obscure,
      TabController? tabController,
      int? registerInviteOn,
      int? loginType}) {
    final controller = ref.watch(registerControllerProvider.notifier);
    final state = ref.watch(registerControllerProvider);
    final List<String> tabs = [
      if (loginType == 3 || loginType == 1)
        context.t.c.register.registerWithName,
      if (loginType == 3 || loginType == 2)
        context.t.c.register.registerWithPhone,
    ];
    return FormBuilder(
      key: controller.formKey,
      child: SizedBox(
        height: registerInviteOn == 1 ? 536.h : 432.h,
        child: Column(spacing: 24.w, children: [
          LoginTabBar(
            controller: tabController,
            tabs: tabs,
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: [
              if (loginType == 3 || loginType == 1)
                _buildRegisterWithNameForm(context,
                    obscure: obscure,
                    isChecked: state.isChecked,
                    registerInviteOn: registerInviteOn,
                    onSubmit: () => controller.register('username')),
              if (loginType == 3 || loginType == 2)
                _buildRegisterWithPhoneForm(context,
                    obscure: obscure,
                    isChecked: state.isChecked,
                    registerInviteOn: registerInviteOn,
                    zone: state.zone,
                    onSubmit: () => controller.register('phone'),
                    onOpenZonePicker: controller.onOpenZonePicker),
            ],
          ))
        ]),
      ),
    );
  }

  Widget _buildRegisterWithNameForm(
    BuildContext context, {
    ValueNotifier<bool>? obscure,
    bool isChecked = true,
    int? registerInviteOn,
    required VoidCallback onSubmit,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        spacing: 24.h,
        children: [
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.login.nameLabel,
                  icon: EvaIcons.person_outline),
              Input(
                name: 'username',
                placeholder: context.t.c.login.namePlaceholder,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.c.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.confirmPasswordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'confirmPassword',
                placeholder: context.t.c.register.confirmPasswordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          if (registerInviteOn == 1)
            Column(spacing: 12.w, children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.invitationCode,
                  icon: EvaIcons.email_outline),
              Input(
                name: 'inviteCode',
                placeholder: context.t.c.register.invitationCodePlaceholder,
                keyboardType: TextInputType.text,
              ),
            ]),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                if (isChecked) {
                  onSubmit();
                } else {
                  ToastUtil.simpleToast(context.t.c.agreement.hint);
                }
              },
              child: Text(context.t.c.register.submit),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterWithPhoneForm(
    BuildContext context, {
    ValueNotifier<bool>? obscure,
    bool isChecked = true,
    int? registerInviteOn,
    required String zone,
    required VoidCallback onSubmit,
    required VoidCallback onOpenZonePicker,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        spacing: 24.h,
        children: [
          Column(
            spacing: 12.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.login.phoneLabel,
                  icon: EvaIcons.phone_outline),
              Input(
                name: 'phone',
                placeholder: context.t.c.login.phonePlaceholder,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                prefixIcon: InputPhoneCode(
                  onOpenPicker: onOpenZonePicker,
                  areaCode: zone,
                ),
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.login.passwordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'password',
                placeholder: context.t.c.login.passwordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure!.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          Column(
            spacing: 12.w,
            children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.confirmPasswordLabel,
                  icon: EvaIcons.lock_outline),
              Input(
                name: 'confirmPassword',
                placeholder: context.t.c.register.confirmPasswordPlaceholder,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () => obscure.value = !obscure.value,
                  icon: Icon(
                    obscure.value ? Icons.visibility_off : Icons.visibility,
                    size: 18.w,
                  ),
                ),
                password: obscure.value,
              ),
            ],
          ),
          if (registerInviteOn == 1)
            Column(spacing: 12.w, children: [
              _buildFormLabelView(context,
                  label: context.t.c.register.invitationCode,
                  icon: EvaIcons.email_outline),
              Input(
                name: 'inviteCode',
                placeholder: context.t.c.register.invitationCodePlaceholder,
                keyboardType: TextInputType.text,
              ),
            ]),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                if (isChecked) {
                  onSubmit();
                } else {
                  ToastUtil.simpleToast(context.t.c.agreement.hint);
                }
              },
              child: Text(context.t.c.register.submit),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormLabelView(BuildContext context,
      {required String label, required IconData icon}) {
    return Row(
      spacing: 6.w,
      children: [
        Text(label).fontSize(16.sp),
        Icon(
          icon,
          size: 16.w,
        )
      ],
    );
  }
}

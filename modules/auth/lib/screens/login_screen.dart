import 'package:auth/providers/login_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icons_plus/icons_plus.dart';

import '../components/swap_lang_button.dart';
import '../components/touch_close_keyboard.dart';
import '../components/user_agreement_checkbox.dart';
import '../hooks/use_obscure.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    final controller = ref.watch(loginControllerProvider.notifier);
    final appConfig = ref.watch(getAppConfigProvider);
    final obscure = useObscure(true);
    final tabController = useTabController(
      initialLength: appConfig.value?.loginType == 3 ? 2 : 1,
    );
    final routeStackLength = context.router.stack.length;
    AppLogger.d('routeStackLength: $routeStackLength');
    return Material(
      color: Colors.transparent,
      child: TouchCloseSoftKeyboard(
          isGradientBg: true,
          child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
                    if (routeStackLength > 1)
                      IconButton(
                        onPressed: controller.back,
                        icon: const Icon(
                          EvaIcons.close_outline,
                          color: Colors.white,
                        ),
                      ),
                  ]
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SwapLangButton(),
                ),
                ImageRes.logo.toImage
                  ..width = 64.w
                  ..height = 64.h,
                16.verticalSpace,
                Text(context.t.c.welcome)
                    .fontSize(18.sp)
                    .textColor(AppTheme.brandColor)
                    .fontWeight(FontWeight.w500),
                52.verticalSpace,
                _buildForm(context,
                    ref: ref,
                    obscure: obscure,
                    tabController: tabController,
                    loginType: appConfig.value?.loginType),
                UserAgreementCheckbox(
                  isChecked: state.isChecked,
                  onCheck: controller.handleChangeChecked,
                  userAgreementContent:
                      appConfig.value?.userAgreementContent ?? '',
                  privacyPolicyContent:
                      appConfig.value?.privacyPolicyContent ?? '',
                ),
              ],
            )),
          )),
    );
  }

  Widget _buildForm(BuildContext context,
      {required WidgetRef ref,
      ValueNotifier<bool>? obscure,
      TabController? tabController,
      int? loginType}) {
    final controller = ref.watch(loginControllerProvider.notifier);
    final state = ref.watch(loginControllerProvider);
    final List<String> tabs = [
      if (loginType == 3 || loginType == 1) context.t.c.login.loginWithName,
      if (loginType == 3 || loginType == 2) context.t.c.login.loginWithPhone,
    ];
    return FormBuilder(
      key: controller.formKey,
      child: SizedBox(
        height: 446.h,
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
                _buildLoginWithUserForm(context,
                    obscure: obscure,
                    isChecked: state.isChecked,
                    onSignup: controller.toSignup,
                    onForgotPassword: controller.toForgotPassword,
                    onSubmit: () => controller.signin('username')),
              if (loginType == 3 || loginType == 2)
                _buildLoginWithPhoneForm(context,
                    obscure: obscure,
                    isChecked: state.isChecked,
                    onSubmit: () => controller.signin('phone'),
                    zone: state.zone,
                    onSignup: controller.toSignup,
                    onForgotPassword: controller.toForgotPassword,
                    onOpenZonePicker: controller.onOpenZonePicker),
            ],
          )),
        ]),
      ),
    );
  }

  Widget _buildLoginWithUserForm(BuildContext context,
      {ValueNotifier<bool>? obscure,
      bool isChecked = true,
      required VoidCallback onSubmit,
      VoidCallback? onForgotPassword,
      VoidCallback? onSignup}) {
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
              child: Text(context.t.c.login.submit),
            ),
          ),
          _buildFormBottomView(
            context,
            onForgotPassword: onForgotPassword,
            onSignup: onSignup,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginWithPhoneForm(BuildContext context,
      {ValueNotifier<bool>? obscure,
      bool isChecked = true,
      String zone = '',
      required VoidCallback onSubmit,
      VoidCallback? onForgotPassword,
      VoidCallback? onSignup,
      required VoidCallback onOpenZonePicker}) {
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
                textInputAction: TextInputAction.done,
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
              child: Text(context.t.c.login.submit),
            ),
          ),
          _buildFormBottomView(
            context,
            onForgotPassword: onForgotPassword,
            onSignup: onSignup,
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
        Text(label).fontSize(14.sp),
        Icon(
          icon,
          size: 16.w,
        )
      ],
    );
  }

  /// 忘记密码和立即注册
  Widget _buildFormBottomView(BuildContext context,
      {VoidCallback? onForgotPassword, VoidCallback? onSignup}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onForgotPassword,
          child: Text(context.t.c.login.forgotPassword)
              .fontSize(12.sp)
              .textColor(AppTheme.lightSecondaryTextColor),
        ),
        TextButton(
          onPressed: onSignup,
          child: Text(context.t.c.login.noAccountYet)
              .fontSize(12.sp)
              .textColor(AppTheme.brandDarkColor),
        ),
      ],
    );
  }
}

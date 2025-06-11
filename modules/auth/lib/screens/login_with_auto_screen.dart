import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/login_tab.dart';
import '../components/swap_lang_button.dart';
import '../components/touch_close_keyboard.dart';
import '../components/user_agreement_checkbox.dart';

@RoutePage()
class LoginWithDeviceScreen extends HookConsumerWidget {
  const LoginWithDeviceScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(loginControllerProvider.notifier);
    final state = ref.watch(loginControllerProvider);
    final appConfig = ref.watch(getAppConfigProvider);
    return Material(
      color: Colors.transparent,
      child: TouchCloseSoftKeyboard(
        isGradientBg: true,
        child: SafeArea(
            child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SwapLangButton(),
            ),
            32.verticalSpace,
            ImageRes.logo.toImage
              ..width = 64.w
              ..height = 64.h,
            16.verticalSpace,
            Text(context.t.c.welcome)
                .fontSize(18.sp)
                .textColor(AppTheme.brandColor)
                .fontWeight(FontWeight.w500),
            52.verticalSpace,
            Expanded(
                child: Column(
              spacing: 24.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginTab(title: context.t.c.login.loginWithDevice),
                _buildAutoRegisterForm(context),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: FilledButton(
                    onPressed:
                        state.isChecked ? controller.signinWithDevice : null,
                    child: Text(context.t.c.login.submit),
                  ),
                )
              ],
            )),
            UserAgreementCheckbox(
              isChecked: state.isChecked,
              onCheck: controller.handleChangeChecked,
              userAgreementContent: appConfig.value?.userAgreementContent ?? '',
              privacyPolicyContent: appConfig.value?.privacyPolicyContent ?? '',
            ),
          ],
        )),
      ),
    );
  }

  /// 自动注册登录
  Widget _buildAutoRegisterForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SizedBox(
        width: double.infinity,
        child: Card.filled(
          shadowColor: AppTheme.brandColor.withValues(alpha: .05),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 24.h),
            child: Center(
              child: Text(context.t.c.login.loginWithAutoRegisterHint)
                  .fontSize(15.sp)
                  .textColor(AppTheme.lightSecondaryTextColor)
                  .fontWeight(FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feihong/controller/auth/signin_provier.dart';
import 'package:feihong/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginWithDevicePage extends HookConsumerWidget {
  const LoginWithDevicePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(signinControllerProvider.notifier);
    final state = ref.watch(signinControllerProvider);
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
                .textColor(Styles.brandColor)
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
          shadowColor: Styles.brandColor.withValues(alpha: .05),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 24.h),
            child: Center(
              child: Text(context.t.c.login.loginWithAutoRegisterHint)
                  .fontSize(15.sp)
                  .textColor(Styles.neutral700)
                  .fontWeight(FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

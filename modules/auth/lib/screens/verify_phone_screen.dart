import 'package:auth/components/touch_close_keyboard.dart';
import 'package:auth/providers/verify_phone_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@RoutePage()
class VerifyPhoneScreen extends HookConsumerWidget {
  final String phone;
  final String zone;
  final String password;
  final String? inviteCode;
  final int usedFor;
  const VerifyPhoneScreen({
    super.key,
    required this.phone,
    required this.zone,
    required this.password,
    required this.usedFor,
    this.inviteCode,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(verifyPhoneControllerProvider(
            phone: phone,
            zone: zone,
            password: password,
            inviteCode: inviteCode,
            usedFor: usedFor)
        .notifier);

    return TouchCloseSoftKeyboard(
      isGradientBg: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.w,
            children: [
              Text(context.t.c.verify.plsEnterVerificationCode)
                  .textColor(AppTheme.brandColor)
                  .fontSize(24.sp)
                  .fontWeight(FontWeight.w600),
              36.verticalSpace,
              PinCodeTextField(
                appContext: context,
                controller: controller.codeEditCtrl,
                length: 6,
                onCompleted: controller.completed,
                obscureText: false,
                blinkWhenObscuring: true,
                autoFocus: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  return null;
                },
                textStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  activeColor: AppTheme.brandColor,
                  selectedColor: AppTheme.brandColor,
                  inactiveColor: AppTheme.lightSecondaryTextColor3,
                  disabledColor: AppTheme.lightSecondaryTextColor3,
                  activeFillColor: AppTheme.lightBackgroundColor,
                  selectedFillColor: AppTheme.lightBackgroundColor,
                  inactiveFillColor: AppTheme.lightBackgroundColor,
                  borderRadius: BorderRadius.circular(8.r),
                  borderWidth: 1,
                  fieldHeight: 42.w,
                  fieldWidth: 42.h,
                ),
                cursorColor: AppTheme.brandColor,
                animationDuration: Duration(milliseconds: 300),
                keyboardType: TextInputType.number,
                errorAnimationController: controller.codeErrorCtrl,
                beforeTextPaste: (text) {
                  return true;
                },
                onSubmitted: (text) {
                  controller.completed(text);
                },
              ),
              VerifyCodeSendButton(
                onTapCallback: () => controller.requestSmsCode(
                  phone: phone,
                  zone: zone,
                ),
              ),
              24.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () =>
                      controller.completed(controller.codeEditCtrl.text),
                  child: Text(context.t.c.verify.confirm),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

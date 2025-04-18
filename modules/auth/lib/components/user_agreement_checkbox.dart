import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:common/common.dart' as context;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserAgreementCheckbox extends StatelessWidget {
  const UserAgreementCheckbox({
    super.key,
    required this.userAgreementContent,
    required this.privacyPolicyContent,
    required this.isChecked,
    required this.onCheck,
  });

  final bool isChecked;
  final Function(bool?) onCheck;
  final String userAgreementContent;
  final String privacyPolicyContent;

  void _onTapUserAgreement() {
    Global.context!.router.pushPath(
        "${Routes.webview}?htmlContent=${Uri.encodeComponent(userAgreementContent)}&title=${Uri.encodeComponent(context.t.c.agreement.userAgreement)}");
  }

  void _onTapPrivacyPolicy() {
    Global.context!.router.pushPath(
        "${Routes.webview}?htmlContent=${Uri.encodeComponent(privacyPolicyContent)}&title=${Uri.encodeComponent(context.t.c.agreement.privacyPolicy)}");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 4.h + MediaQuery.of(context).padding.bottom,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(value: isChecked, onChanged: onCheck),
          Text.rich(
            style: TextStyle(
                fontSize: 12.sp, color: AppTheme.lightSecondaryTextColor),
            context.t.c.agreement.checkbox(
              userAgreement: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = _onTapUserAgreement,
                text: context.t.c.agreement.userAgreement,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppTheme.brandColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppTheme.brandColor),
              ),
              privacyPolicy: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = _onTapPrivacyPolicy,
                text: context.t.c.agreement.privacyPolicy,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppTheme.brandColor,
                    decorationColor: AppTheme.brandColor,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:common/common.dart' as context;
import 'package:feihong/config.dart';
import 'package:feihong/route/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserAgreementCheckbox extends StatelessWidget {
  const UserAgreementCheckbox({
    super.key,
    required this.isChecked,
    required this.onCheck,
  });

  final bool isChecked;
  final Function(bool?) onCheck;

  void _onTapUserAgreement() {
    final htmlContent = Config.appConfig?.userAgreementContent;
    Global.context!.router.push(WebViewRoute(
      htmlContent: htmlContent,
      title: context.t.agreement.userAgreement,
    ));
  }

  void _onTapPrivacyPolicy() {
    final htmlContent = Config.appConfig?.privacyPolicyContent;
    Global.context!.router.push(WebViewRoute(
      htmlContent: htmlContent,
      title: context.t.agreement.privacyPolicy,
    ));
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
            style: TextStyle(fontSize: 12.sp, color: Styles.neutral600),
            context.t.agreement.checkbox(
              userAgreement: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = _onTapUserAgreement,
                text: context.t.agreement.userAgreement,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Styles.brandColor,
                    decoration: TextDecoration.underline,
                    decorationColor: Styles.brandColor),
              ),
              privacyPolicy: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = _onTapPrivacyPolicy,
                text: context.t.agreement.privacyPolicy,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Styles.brandColor,
                    decorationColor: Styles.brandColor,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

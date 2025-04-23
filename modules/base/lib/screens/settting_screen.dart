import 'package:auto_route/auto_route.dart';
import 'package:base/providers/setting_provider.dart';
import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(settingControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.c.setting.title),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            6.verticalSpace,
            _buildCardView(
                child: Column(
              children: [
                _buildItemView(
                  title: context.t.c.setting.accountSecurity,
                  onTap: () {},
                ),
                _buildItemView(
                  title: context.t.c.setting.general,
                  onTap: () {},
                ),
              ],
            )),
            _buildCardView(
                child: Column(
              children: [
                _buildItemView(
                    title: context.t.c.setting.contactCustomer, onTap: () {}),
                _buildItemView(title: context.t.c.setting.about, onTap: () {}),
                _buildItemView(
                    title: context.t.c.setting.feedback, onTap: () {}),
                _buildItemView(
                    title: context.t.c.setting.networkDetection, onTap: () {}),
                _buildItemView(
                    title: context.t.c.setting.switchLanguage, onTap: () {}),
              ],
            )),
            _buildCardView(
                child: Column(
              children: [
                _buildItemView(
                    title: context.t.c.setting.userAgreement, onTap: () {}),
                _buildItemView(
                    title: context.t.c.setting.privacyPolicy, onTap: () {}),
              ],
            )),
            16.verticalSpace,
            _buildSwitchAccountView(
              context,
              onSwitchAccount: controller.onSwitchAccount,
            ),
            _buildLogoutView(context, onLogout: controller.onLogout),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchAccountView(
    BuildContext context, {
    required VoidCallback onSwitchAccount,
  }) {
    return _buildCardView(
        child: CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      onPressed: onSwitchAccount,
      child: SizedBox(
        height: 52.h,
        child: Center(
            child: Text(context.t.c.setting.switchAccount)
                .textColor(AppTheme.lightTextColor)
                .fontSize(16.sp)),
      ),
    ));
  }

  Widget _buildLogoutView(
    BuildContext context, {
    required VoidCallback onLogout,
  }) {
    return _buildCardView(
        child: CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      onPressed: onLogout,
      child: SizedBox(
        height: 52.h,
        child: Center(
          child: Text(context.t.c.setting.logout)
              .fontSize(16.sp)
              .textColor(AppTheme.dangerColor),
        ),
      ),
    ));
  }

  Widget _buildCardView({required Widget child}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: AppTheme.dividerColor,
          ),
          top: BorderSide(
            width: 0.5,
            color: AppTheme.dividerColor,
          ),
        ),
      ),
      child: child,
    );
  }

  Widget _buildItemView({
    required String title,
    required VoidCallback onTap,
    bool showDivider = true,
  }) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: showDivider
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: AppTheme.dividerColor2,
                ),
              ),
            )
          : null,
      child: Row(
        children: [
          Expanded(child: Text(title).fontSize(16.sp)),
          Icon(Icons.chevron_right_rounded,
              color: AppTheme.lightSecondaryTextColor),
        ],
      ),
    );
  }
}

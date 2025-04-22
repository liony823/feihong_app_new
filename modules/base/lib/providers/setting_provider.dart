import 'package:common/common.dart';
import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_provider.g.dart';

class SettingState {}

@riverpod
class SettingController extends _$SettingController {
  @override
  SettingState build() {
    return SettingState();
  }

  void onSwitchAccount() {
    Global.context!.router.pushPath(Routes.account);
  }

  void onLogout() {
    final context = Global.context!;
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheetView(
        items: [
          SheetItem(
            label: context.t.c.setting.logoutConfirm,
            textStyle: TextStyle(
              color: AppTheme.lightSecondaryTextColor,
              fontSize: 14.sp,
            ),
          ),
          SheetItem(
            label: context.t.c.setting.logout,
            textStyle: TextStyle(
              color: AppTheme.dangerColor,
              fontSize: 17.sp,
            ),
            onTap: _onLogout,
          ),
        ],
      ),
    );
  }

  Future<void> _onLogout() async {
    final authService = ref.read(authServiceProvider);
    final result = await authService.logout();
    if (result) {
      Global.context!.router.replaceAll([const LoginRoute()]);
    }
  }
}

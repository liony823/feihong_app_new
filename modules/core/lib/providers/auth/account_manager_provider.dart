import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_manager_provider.g.dart';

class AccountManagerState {
  final List<DBAccount> accounts;
  final bool isManager;
  final String currentAccountUid;

  AccountManagerState(
      {required this.accounts,
      required this.isManager,
      required this.currentAccountUid});

  AccountManagerState copyWith(
      {List<DBAccount>? accounts, bool? isManager, String? currentAccountUid}) {
    return AccountManagerState(
      accounts: accounts ?? this.accounts,
      isManager: isManager ?? this.isManager,
      currentAccountUid: currentAccountUid ?? this.currentAccountUid,
    );
  }
}

@riverpod
class AccountManagerController extends _$AccountManagerController {
  AccountService get _accountService => ref.read(accountServiceProvider);
  AuthService get _authService => ref.read(authServiceProvider);

  @override
  FutureOr<AccountManagerState> build() async {
    final accounts = await _accountService.getAccountList();
    final currentAccountUid = SpHelper.uid;
    return AccountManagerState(
        accounts: accounts,
        isManager: false,
        currentAccountUid: currentAccountUid);
  }

  void addAccount() {
    showModalBottomSheet(
      context: Global.context!,
      builder: (context) {
        return BottomSheetView(
          items: [
            SheetItem(
                label: context.t.c.account.loginOther, onTap: _onLoginOther),
            SheetItem(
              label: context.t.c.account.registerOther,
              onTap: _onRegisterOther,
            ),
          ],
        );
      },
    );
  }

  void onSwitchManager() {
    state = AsyncData(
      state.requireValue.copyWith(isManager: !state.requireValue.isManager),
    );
  }

  void onDeleteAccount(DBAccount account) {
    showModalBottomSheet(
      context: Global.context!,
      builder: (context) {
        return BottomSheetView(
          items: [
            SheetItem(
              label: context.t.c.account.deleteAccountHint,
              textStyle: TextStyle(
                color: AppTheme.lightSecondaryTextColor,
                fontSize: 13.sp,
              ),
            ),
            SheetItem(
              label: context.t.c.account.deleteAccountLabel(name: account.name),
              textStyle: TextStyle(
                color: AppTheme.dangerColor,
                fontSize: 16.sp,
              ),
              onTap: () => _onDeleteAccount(account),
            ),
          ],
        );
      },
    );
  }

  void onSwitchAccount(DBAccount account) async {
    if (account.uid == state.requireValue.currentAccountUid) {
      Global.context?.router.replacePath(Routes.home);
      return;
    }
    UserCert? userCert;
    if (account.loginType == 1) {
      userCert = await LoadingView.singleton.wrap(
        asyncFunction: () => _authService.loginByPhone(
          zone: account.zone,
          phone: account.phone,
          password: account.password,
          deviceId: CommonModule.deviceID,
          deviceName: CommonModule.deviceName,
          deviceModel: CommonModule.deviceModel,
        ),
      );
    } else if (account.loginType == 2) {
      userCert = await LoadingView.singleton.wrap(
        asyncFunction: () => _authService.loginByUsername(
          username: account.username,
          password: account.password,
          deviceId: CommonModule.deviceID,
          deviceName: CommonModule.deviceName,
          deviceModel: CommonModule.deviceModel,
        ),
      );
    }
    if (userCert != null) {
      Global.context?.router.replacePath(Routes.home);
    }
  }

  void _onLoginOther() {
    Global.context!.router.pushPath(Routes.login);
  }

  void _onRegisterOther() {
    Global.context!.router.pushPath(Routes.register);
  }

  void _onDeleteAccount(DBAccount account) async {
    _accountService.deleteAccount(account.id);
    final accounts = await _accountService.getAccountList();
    state = AsyncData(
      state.requireValue.copyWith(accounts: accounts),
    );
  }
}

import 'package:auth/models/db/db_account.dart';
import 'package:auth/services/account_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

class AccountState {
  final List<DBAccount> accounts;
  final bool isManager;

  AccountState({required this.accounts, required this.isManager});

  AccountState copyWith({List<DBAccount>? accounts, bool? isManager}) {
    return AccountState(
      accounts: accounts ?? this.accounts,
      isManager: isManager ?? this.isManager,
    );
  }
}

@riverpod
class AccountController extends _$AccountController {
  AccountService get _accountService => ref.read(accountServiceProvider);

  @override
  FutureOr<AccountState> build() async {
    final accounts = await _accountService.getAccountList();
    return AccountState(accounts: accounts, isManager: false);
  }
}

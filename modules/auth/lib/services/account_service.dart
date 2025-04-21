import 'package:auth/models/db/db_account.dart';
import 'package:auth/repositories/account_repository.dart';
import 'package:common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_service.g.dart';

class AccountService {
  final AccountRepository _accountRepository;

  AccountService(this._accountRepository);

  Future<List<DBAccount>> getAccountList() async {
    try {
      return await _accountRepository.getAccountList();
    } catch (e) {
      AppLogger.e('getAccountList error: $e');
      return [];
    }
  }

  Future<int> deleteAccount(int id) async {
    try {
      return await _accountRepository.deleteAccount(id);
    } catch (e) {
      AppLogger.e('deleteAccount error', e);
      return 0;
    }
  }

  Future<int> updateAccount(DBAccount account) async {
    try {
      return await _accountRepository.updateAccount(account);
    } catch (e) {
      AppLogger.e('updateAccount error', e);
      return 0;
    }
  }
}

@riverpod
AccountService accountService(Ref ref) {
  return AccountService(ref.read(accountRepositoryProvider));
}

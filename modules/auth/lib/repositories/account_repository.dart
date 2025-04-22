import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/db/db_account.dart';

part 'account_repository.g.dart';

class AccountRepository {
  final DB _db;

  AccountRepository(this._db);

  Future<List<DBAccount>> getAccountList() async {
    final result =
        await _db.database.query(DBAccount.table, orderBy: 'created_at DESC');
    return result.map((e) => DBAccount.fromJson(e)).toList();
  }

  Future<DBAccount?> getAccountByUsername(String username) async {
    final result = await _db.database
        .query(DBAccount.table, where: 'username = ?', whereArgs: [username]);
    return result.isNotEmpty ? DBAccount.fromJson(result.first) : null;
  }

  Future<DBAccount?> getAccountByPhone(String phone, String zone) async {
    final result = await _db.database.query(DBAccount.table,
        where: 'phone = ? AND zone = ?', whereArgs: [phone, zone]);
    return result.isNotEmpty ? DBAccount.fromJson(result.first) : null;
  }

  Future<int> saveAccount(DBAccount account) async {
    return await _db.database.insert(DBAccount.table, account.toJson());
  }

  Future<int> updateAccount(DBAccount account) async {
    return await _db.database.update(DBAccount.table, account.toJson(),
        where: 'id = ?', whereArgs: [account.id]);
  }

  Future<int> deleteAccount(String id) async {
    return await _db.database
        .delete(DBAccount.table, where: 'id = ?', whereArgs: [id]);
  }
}

@riverpod
AccountRepository accountRepository(Ref ref) {
  return AccountRepository(DB.instance);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_account.freezed.dart';
part 'db_account.g.dart';

@freezed
abstract class DBAccount with _$DBAccount {
  const factory DBAccount({
    @Default(0) int id,
    required String username,
    required String zone,
    required String phone,
    required String password,
    required int loginType,
    @Default(0) int createdAt,
    @Default(0) int updatedAt,
  }) = _DBAccount;

  factory DBAccount.fromJson(Map<String, dynamic> json) =>
      _$DBAccountFromJson(json);

  static const String table = 'account';
}

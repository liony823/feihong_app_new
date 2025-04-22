import 'package:json_annotation/json_annotation.dart';

part 'db_account.g.dart';

@JsonSerializable()
class DBAccount {
  final String id;
  final String uid;
  final String name;
  final String username;
  final String zone;
  final String phone;
  final String password;
  final int loginType;
  final int? createdAt;
  final int? updatedAt;

  DBAccount({
    required this.id,
    required this.uid,
    required this.name,
    required this.username,
    required this.zone,
    required this.phone,
    required this.password,
    required this.loginType,
    this.createdAt,
    this.updatedAt,
  });

  factory DBAccount.fromJson(Map<String, dynamic> json) =>
      _$DBAccountFromJson(json);

  Map<String, dynamic> toJson() => _$DBAccountToJson(this);

  static const String table = 'account';
}

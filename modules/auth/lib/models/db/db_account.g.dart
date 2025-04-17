// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DBAccount _$DBAccountFromJson(Map<String, dynamic> json) => _DBAccount(
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String,
      zone: json['zone'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      loginType: (json['login_type'] as num).toInt(),
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
      updatedAt: (json['updated_at'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DBAccountToJson(_DBAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'zone': instance.zone,
      'phone': instance.phone,
      'password': instance.password,
      'login_type': instance.loginType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

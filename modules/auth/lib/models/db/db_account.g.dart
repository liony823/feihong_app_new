// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DBAccount _$DBAccountFromJson(Map<String, dynamic> json) => DBAccount(
      id: json['id'] as String,
      uid: json['uid'] as String,
      username: json['username'] as String,
      zone: json['zone'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      loginType: (json['login_type'] as num).toInt(),
      createdAt: (json['created_at'] as num?)?.toInt(),
      updatedAt: (json['updated_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DBAccountToJson(DBAccount instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'username': instance.username,
      'zone': instance.zone,
      'phone': instance.phone,
      'password': instance.password,
      'login_type': instance.loginType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

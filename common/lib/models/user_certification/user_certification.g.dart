// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_certification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCertification _$UserCertificationFromJson(Map<String, dynamic> json) =>
    _UserCertification(
      token: json['token'] as String,
      uid: json['uid'] as String,
      tokenExpiredAt: (json['tokenExpiredAt'] as num).toInt(),
    );

Map<String, dynamic> _$UserCertificationToJson(_UserCertification instance) =>
    <String, dynamic>{
      'token': instance.token,
      'uid': instance.uid,
      'tokenExpiredAt': instance.tokenExpiredAt,
    };

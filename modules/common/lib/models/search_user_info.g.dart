// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchUserInfo _$SearchUserInfoFromJson(Map<String, dynamic> json) =>
    _SearchUserInfo(
      uid: json['uid'] as String,
      name: json['name'] as String,
      sex: (json['sex'] as num).toInt(),
      introduction: json['introduction'] as String,
      vercode: json['vercode'] as String,
    );

Map<String, dynamic> _$SearchUserInfoToJson(_SearchUserInfo instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'sex': instance.sex,
      'introduction': instance.introduction,
      'vercode': instance.vercode,
    };

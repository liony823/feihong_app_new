// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_apply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendApply _$FriendApplyFromJson(Map<String, dynamic> json) => _FriendApply(
      uid: json['uid'] as String,
      toUid: json['to_uid'] as String,
      toName: json['to_name'] as String,
      status: json['status'] == null
          ? FriendApplyStatus.apply
          : const FriendApplyStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      remark: json['remark'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$FriendApplyToJson(_FriendApply instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'to_uid': instance.toUid,
      'to_name': instance.toName,
      'status': const FriendApplyStatusConverter().toJson(instance.status),
      'remark': instance.remark,
      'created_at': instance.createdAt,
      'token': instance.token,
    };

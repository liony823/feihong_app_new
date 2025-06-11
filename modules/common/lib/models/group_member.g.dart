// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) => _GroupMember(
      uid: json['uid'] as String,
      groupNo: json['group_no'] as String,
      name: json['name'] as String? ?? "",
      username: json['username'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      role: (json['role'] as num?)?.toInt() ?? 0,
      isDeleted: (json['is_deleted'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      vercode: json['vercode'] as String? ?? "",
      inviteUid: json['invite_uid'] as String? ?? "",
      robot: (json['robot'] as num?)?.toInt() ?? 0,
      forbiddenExpirTime: (json['forbidden_expir_time'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      version: (json['version'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GroupMemberToJson(_GroupMember instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'group_no': instance.groupNo,
      'name': instance.name,
      'username': instance.username,
      'remark': instance.remark,
      'role': instance.role,
      'is_deleted': instance.isDeleted,
      'status': instance.status,
      'vercode': instance.vercode,
      'invite_uid': instance.inviteUid,
      'robot': instance.robot,
      'forbidden_expir_time': instance.forbiddenExpirTime,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'version': instance.version,
    };

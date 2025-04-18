// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      mute: (json['mute'] as num?)?.toInt() ?? 0,
      top: (json['top'] as num?)?.toInt() ?? 0,
      sex: (json['sex'] as num?)?.toInt() ?? 0,
      online: (json['online'] as num?)?.toInt() ?? 0,
      receipt: (json['receipt'] as num?)?.toInt() ?? 0,
      robot: (json['robot'] as num?)?.toInt() ?? 0,
      lastOffline: (json['last_offline'] as num?)?.toInt() ?? 0,
      category: json['category'] as String? ?? '',
      follow: (json['follow'] as num?)?.toInt() ?? 0,
      remark: json['remark'] as String? ?? '',
      chatPwdOn: (json['chat_pwd_on'] as num?)?.toInt() ?? 0,
      status: json['status'] == null
          ? ContactStatus.unknown
          : const ContactStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      shortNo: json['short_no'] as String? ?? '',
      sourceDesc: json['source_desc'] as String? ?? '',
      vercode: json['vercode'] as String? ?? '',
      screenshot: (json['screenshot'] as num?)?.toInt() ?? 0,
      revokeRemind: (json['revoke_remind'] as num?)?.toInt() ?? 0,
      beBlacklist: (json['be_blacklist'] as num?)?.toInt() ?? 0,
      beDeleted: (json['be_deleted'] as num?)?.toInt() ?? 0,
      version: (json['version'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'mute': instance.mute,
      'top': instance.top,
      'sex': instance.sex,
      'online': instance.online,
      'receipt': instance.receipt,
      'robot': instance.robot,
      'last_offline': instance.lastOffline,
      'category': instance.category,
      'follow': instance.follow,
      'remark': instance.remark,
      'chat_pwd_on': instance.chatPwdOn,
      'status': const ContactStatusConverter().toJson(instance.status),
      'short_no': instance.shortNo,
      'source_desc': instance.sourceDesc,
      'vercode': instance.vercode,
      'screenshot': instance.screenshot,
      'revoke_remind': instance.revokeRemind,
      'be_blacklist': instance.beBlacklist,
      'be_deleted': instance.beDeleted,
      'version': instance.version,
    };

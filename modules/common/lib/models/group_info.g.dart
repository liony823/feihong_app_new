// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupInfo _$GroupInfoFromJson(Map<String, dynamic> json) => _GroupInfo(
      groupNo: json['group_no'] as String,
      groupType: (json['group_type'] as num).toInt(),
      name: json['name'] as String,
      remark: json['remark'] as String,
      avatar: json['avatar'] as String,
      notice: json['notice'] as String? ?? "",
      mute: (json['mute'] as num?)?.toInt() ?? 0,
      top: (json['top'] as num?)?.toInt() ?? 0,
      showNick: (json['show_nick'] as num?)?.toInt() ?? 0,
      save: (json['save'] as num?)?.toInt() ?? 0,
      forbidden: (json['forbidden'] as num?)?.toInt() ?? 0,
      invite: (json['invite'] as num?)?.toInt() ?? 0,
      chatPwdOn: (json['chat_pwd_on'] as num?)?.toInt() ?? 0,
      screenshot: (json['screenshot'] as num?)?.toInt() ?? 0,
      revokeRemind: (json['revoke_remind'] as num?)?.toInt() ?? 0,
      joinGroupRemind: (json['join_group_remind'] as num?)?.toInt() ?? 0,
      forbiddenAddFriend: (json['forbidden_add_friend'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      receipt: (json['receipt'] as num?)?.toInt() ?? 0,
      flame: (json['flame'] as num?)?.toInt() ?? 0,
      flameSecond: (json['flame_second'] as num?)?.toInt() ?? 0,
      allowViewHistoryMsg:
          (json['allow_view_history_msg'] as num?)?.toInt() ?? 0,
      memberCount: (json['member_count'] as num?)?.toInt() ?? 0,
      onlineCount: (json['online_count'] as num?)?.toInt() ?? 0,
      quit: (json['quit'] as num?)?.toInt() ?? 0,
      role: (json['role'] as num?)?.toInt() ?? 0,
      forbiddenExpirTime: (json['forbidden_expir_time'] as num?)?.toInt() ?? 0,
      allowMemberPinnedMessage:
          (json['allow_member_pinned_message'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      version: (json['version'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$GroupInfoToJson(_GroupInfo instance) =>
    <String, dynamic>{
      'group_no': instance.groupNo,
      'group_type': instance.groupType,
      'name': instance.name,
      'remark': instance.remark,
      'avatar': instance.avatar,
      'notice': instance.notice,
      'mute': instance.mute,
      'top': instance.top,
      'show_nick': instance.showNick,
      'save': instance.save,
      'forbidden': instance.forbidden,
      'invite': instance.invite,
      'chat_pwd_on': instance.chatPwdOn,
      'screenshot': instance.screenshot,
      'revoke_remind': instance.revokeRemind,
      'join_group_remind': instance.joinGroupRemind,
      'forbidden_add_friend': instance.forbiddenAddFriend,
      'status': instance.status,
      'receipt': instance.receipt,
      'flame': instance.flame,
      'flame_second': instance.flameSecond,
      'allow_view_history_msg': instance.allowViewHistoryMsg,
      'member_count': instance.memberCount,
      'online_count': instance.onlineCount,
      'quit': instance.quit,
      'role': instance.role,
      'forbidden_expir_time': instance.forbiddenExpirTime,
      'allow_member_pinned_message': instance.allowMemberPinnedMessage,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'version': instance.version,
    };

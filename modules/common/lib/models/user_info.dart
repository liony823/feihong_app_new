import 'package:freezed_annotation/freezed_annotation.dart';

import 'group_member.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String uid,
    required String username,
    required String name,
    String? email,
    String? zone,
    String? phone,
    required int mute,
    required int top,
    required int sex,
    required String introduction,
    required String category,
    required String shortNo,
    required int chatPwdOn,
    required int screenshot,
    required int revokeRemind,
    required int receipt,
    required int online,
    required int lastOffline,
    required int deviceFlag,
    required int follow,
    required int beDeleted,
    required int beBlacklist,
    required String code,
    required String vercode,
    required String sourceDesc,
    required String remark,
    required int isUploadAvatar,
    required int status,
    required int robot,
    required int isDestroy,
    required int flame,
    required int flameSecond,
    required String joinGroupInviteUid,
    required String joinGroupInviteName,
    GroupMember? groupMember,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

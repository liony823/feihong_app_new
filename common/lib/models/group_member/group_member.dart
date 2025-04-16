import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_member.freezed.dart';
part 'group_member.g.dart';

@freezed
abstract class GroupMember with _$GroupMember {
  const factory GroupMember({
    required String uid,
    required String groupNo,
    required String name,
    required String remark,
    required int role,
    required int isDeleted,
    required int status,
    required String vercode,
    required String inviteUid,
    required int robot,
    required int forbiddenExpirTime,
    required String createdAt,
    required String updatedAt,
  }) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);
}

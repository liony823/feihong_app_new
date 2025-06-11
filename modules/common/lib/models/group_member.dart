import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_member.freezed.dart';
part 'group_member.g.dart';

@freezed
abstract class GroupMember with _$GroupMember {
  const factory GroupMember({
    required String uid,
    required String groupNo,
    @Default("") String name,
    @Default("") String username,
    @Default("") String remark,
    @Default(0) int role,
    @Default(0) int isDeleted,
    @Default(0) int status,
    @Default("") String vercode,
    @Default("") String inviteUid,
    @Default(0) int robot,
    @Default(0) int forbiddenExpirTime,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(0) int version,
  }) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);
}

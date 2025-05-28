import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_info.freezed.dart';
part 'group_info.g.dart';

@freezed
abstract class GroupInfo with _$GroupInfo {
  const factory GroupInfo({
    required String groupNo,
    required int groupType,
    required String name,
    required String remark,
    required String avatar,
    @Default("") String notice,
    @Default(0) int mute,
    @Default(0) int top,
    @Default(0) int showNick,
    @Default(0) int save,
    @Default(0) int forbidden,
    @Default(0) int invite,
    @Default(0) int chatPwdOn,
    @Default(0) int screenshot,
    @Default(0) int revokeRemind,
    @Default(0) int joinGroupRemind,  
    @Default(0) int forbiddenAddFriend,
    @Default(0) int status,
    @Default(0) int receipt,
    @Default(0) int flame,
    @Default(0) int flameSecond,
    @Default(0) int allowViewHistoryMsg,
    @Default(0) int memberCount,
    @Default(0) int onlineCount,  
    @Default(0) int quit,
    @Default(0) int role,
    @Default(0) int forbiddenExpirTime,
    @Default(0) int allowMemberPinnedMessage,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default(0) int version,
  }) = _GroupInfo;
  factory GroupInfo.fromJson(Map<String, dynamic> json) =>
      _$GroupInfoFromJson(json);
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupInfo {
  String get groupNo;
  int get groupType;
  String get name;
  String get remark;
  String get avatar;
  String get notice;
  int get mute;
  int get top;
  int get showNick;
  int get save;
  int get forbidden;
  int get invite;
  int get chatPwdOn;
  int get screenshot;
  int get revokeRemind;
  int get joinGroupRemind;
  int get forbiddenAddFriend;
  int get status;
  int get receipt;
  int get flame;
  int get flameSecond;
  int get allowViewHistoryMsg;
  int get memberCount;
  int get onlineCount;
  int get quit;
  int get role;
  int get forbiddenExpirTime;
  int get allowMemberPinnedMessage;
  String get createdAt;
  String get updatedAt;
  int get version;

  /// Create a copy of GroupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupInfoCopyWith<GroupInfo> get copyWith =>
      _$GroupInfoCopyWithImpl<GroupInfo>(this as GroupInfo, _$identity);

  /// Serializes this GroupInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupInfo &&
            (identical(other.groupNo, groupNo) || other.groupNo == groupNo) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.showNick, showNick) ||
                other.showNick == showNick) &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.forbidden, forbidden) ||
                other.forbidden == forbidden) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.joinGroupRemind, joinGroupRemind) ||
                other.joinGroupRemind == joinGroupRemind) &&
            (identical(other.forbiddenAddFriend, forbiddenAddFriend) ||
                other.forbiddenAddFriend == forbiddenAddFriend) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.allowViewHistoryMsg, allowViewHistoryMsg) ||
                other.allowViewHistoryMsg == allowViewHistoryMsg) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.onlineCount, onlineCount) ||
                other.onlineCount == onlineCount) &&
            (identical(other.quit, quit) || other.quit == quit) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.forbiddenExpirTime, forbiddenExpirTime) ||
                other.forbiddenExpirTime == forbiddenExpirTime) &&
            (identical(
                    other.allowMemberPinnedMessage, allowMemberPinnedMessage) ||
                other.allowMemberPinnedMessage == allowMemberPinnedMessage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        groupNo,
        groupType,
        name,
        remark,
        avatar,
        notice,
        mute,
        top,
        showNick,
        save,
        forbidden,
        invite,
        chatPwdOn,
        screenshot,
        revokeRemind,
        joinGroupRemind,
        forbiddenAddFriend,
        status,
        receipt,
        flame,
        flameSecond,
        allowViewHistoryMsg,
        memberCount,
        onlineCount,
        quit,
        role,
        forbiddenExpirTime,
        allowMemberPinnedMessage,
        createdAt,
        updatedAt,
        version
      ]);

  @override
  String toString() {
    return 'GroupInfo(groupNo: $groupNo, groupType: $groupType, name: $name, remark: $remark, avatar: $avatar, notice: $notice, mute: $mute, top: $top, showNick: $showNick, save: $save, forbidden: $forbidden, invite: $invite, chatPwdOn: $chatPwdOn, screenshot: $screenshot, revokeRemind: $revokeRemind, joinGroupRemind: $joinGroupRemind, forbiddenAddFriend: $forbiddenAddFriend, status: $status, receipt: $receipt, flame: $flame, flameSecond: $flameSecond, allowViewHistoryMsg: $allowViewHistoryMsg, memberCount: $memberCount, onlineCount: $onlineCount, quit: $quit, role: $role, forbiddenExpirTime: $forbiddenExpirTime, allowMemberPinnedMessage: $allowMemberPinnedMessage, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }
}

/// @nodoc
abstract mixin class $GroupInfoCopyWith<$Res> {
  factory $GroupInfoCopyWith(GroupInfo value, $Res Function(GroupInfo) _then) =
      _$GroupInfoCopyWithImpl;
  @useResult
  $Res call(
      {String groupNo,
      int groupType,
      String name,
      String remark,
      String avatar,
      String notice,
      int mute,
      int top,
      int showNick,
      int save,
      int forbidden,
      int invite,
      int chatPwdOn,
      int screenshot,
      int revokeRemind,
      int joinGroupRemind,
      int forbiddenAddFriend,
      int status,
      int receipt,
      int flame,
      int flameSecond,
      int allowViewHistoryMsg,
      int memberCount,
      int onlineCount,
      int quit,
      int role,
      int forbiddenExpirTime,
      int allowMemberPinnedMessage,
      String createdAt,
      String updatedAt,
      int version});
}

/// @nodoc
class _$GroupInfoCopyWithImpl<$Res> implements $GroupInfoCopyWith<$Res> {
  _$GroupInfoCopyWithImpl(this._self, this._then);

  final GroupInfo _self;
  final $Res Function(GroupInfo) _then;

  /// Create a copy of GroupInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupNo = null,
    Object? groupType = null,
    Object? name = null,
    Object? remark = null,
    Object? avatar = null,
    Object? notice = null,
    Object? mute = null,
    Object? top = null,
    Object? showNick = null,
    Object? save = null,
    Object? forbidden = null,
    Object? invite = null,
    Object? chatPwdOn = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? joinGroupRemind = null,
    Object? forbiddenAddFriend = null,
    Object? status = null,
    Object? receipt = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? allowViewHistoryMsg = null,
    Object? memberCount = null,
    Object? onlineCount = null,
    Object? quit = null,
    Object? role = null,
    Object? forbiddenExpirTime = null,
    Object? allowMemberPinnedMessage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_self.copyWith(
      groupNo: null == groupNo
          ? _self.groupNo
          : groupNo // ignore: cast_nullable_to_non_nullable
              as String,
      groupType: null == groupType
          ? _self.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      notice: null == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      showNick: null == showNick
          ? _self.showNick
          : showNick // ignore: cast_nullable_to_non_nullable
              as int,
      save: null == save
          ? _self.save
          : save // ignore: cast_nullable_to_non_nullable
              as int,
      forbidden: null == forbidden
          ? _self.forbidden
          : forbidden // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _self.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as int,
      chatPwdOn: null == chatPwdOn
          ? _self.chatPwdOn
          : chatPwdOn // ignore: cast_nullable_to_non_nullable
              as int,
      screenshot: null == screenshot
          ? _self.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as int,
      revokeRemind: null == revokeRemind
          ? _self.revokeRemind
          : revokeRemind // ignore: cast_nullable_to_non_nullable
              as int,
      joinGroupRemind: null == joinGroupRemind
          ? _self.joinGroupRemind
          : joinGroupRemind // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenAddFriend: null == forbiddenAddFriend
          ? _self.forbiddenAddFriend
          : forbiddenAddFriend // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      allowViewHistoryMsg: null == allowViewHistoryMsg
          ? _self.allowViewHistoryMsg
          : allowViewHistoryMsg // ignore: cast_nullable_to_non_nullable
              as int,
      memberCount: null == memberCount
          ? _self.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      onlineCount: null == onlineCount
          ? _self.onlineCount
          : onlineCount // ignore: cast_nullable_to_non_nullable
              as int,
      quit: null == quit
          ? _self.quit
          : quit // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenExpirTime: null == forbiddenExpirTime
          ? _self.forbiddenExpirTime
          : forbiddenExpirTime // ignore: cast_nullable_to_non_nullable
              as int,
      allowMemberPinnedMessage: null == allowMemberPinnedMessage
          ? _self.allowMemberPinnedMessage
          : allowMemberPinnedMessage // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GroupInfo implements GroupInfo {
  const _GroupInfo(
      {required this.groupNo,
      required this.groupType,
      required this.name,
      required this.remark,
      required this.avatar,
      this.notice = "",
      this.mute = 0,
      this.top = 0,
      this.showNick = 0,
      this.save = 0,
      this.forbidden = 0,
      this.invite = 0,
      this.chatPwdOn = 0,
      this.screenshot = 0,
      this.revokeRemind = 0,
      this.joinGroupRemind = 0,
      this.forbiddenAddFriend = 0,
      this.status = 0,
      this.receipt = 0,
      this.flame = 0,
      this.flameSecond = 0,
      this.allowViewHistoryMsg = 0,
      this.memberCount = 0,
      this.onlineCount = 0,
      this.quit = 0,
      this.role = 0,
      this.forbiddenExpirTime = 0,
      this.allowMemberPinnedMessage = 0,
      this.createdAt = "",
      this.updatedAt = "",
      this.version = 0});
  factory _GroupInfo.fromJson(Map<String, dynamic> json) =>
      _$GroupInfoFromJson(json);

  @override
  final String groupNo;
  @override
  final int groupType;
  @override
  final String name;
  @override
  final String remark;
  @override
  final String avatar;
  @override
  @JsonKey()
  final String notice;
  @override
  @JsonKey()
  final int mute;
  @override
  @JsonKey()
  final int top;
  @override
  @JsonKey()
  final int showNick;
  @override
  @JsonKey()
  final int save;
  @override
  @JsonKey()
  final int forbidden;
  @override
  @JsonKey()
  final int invite;
  @override
  @JsonKey()
  final int chatPwdOn;
  @override
  @JsonKey()
  final int screenshot;
  @override
  @JsonKey()
  final int revokeRemind;
  @override
  @JsonKey()
  final int joinGroupRemind;
  @override
  @JsonKey()
  final int forbiddenAddFriend;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final int receipt;
  @override
  @JsonKey()
  final int flame;
  @override
  @JsonKey()
  final int flameSecond;
  @override
  @JsonKey()
  final int allowViewHistoryMsg;
  @override
  @JsonKey()
  final int memberCount;
  @override
  @JsonKey()
  final int onlineCount;
  @override
  @JsonKey()
  final int quit;
  @override
  @JsonKey()
  final int role;
  @override
  @JsonKey()
  final int forbiddenExpirTime;
  @override
  @JsonKey()
  final int allowMemberPinnedMessage;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final int version;

  /// Create a copy of GroupInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupInfoCopyWith<_GroupInfo> get copyWith =>
      __$GroupInfoCopyWithImpl<_GroupInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupInfo &&
            (identical(other.groupNo, groupNo) || other.groupNo == groupNo) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.notice, notice) || other.notice == notice) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.showNick, showNick) ||
                other.showNick == showNick) &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.forbidden, forbidden) ||
                other.forbidden == forbidden) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.joinGroupRemind, joinGroupRemind) ||
                other.joinGroupRemind == joinGroupRemind) &&
            (identical(other.forbiddenAddFriend, forbiddenAddFriend) ||
                other.forbiddenAddFriend == forbiddenAddFriend) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.allowViewHistoryMsg, allowViewHistoryMsg) ||
                other.allowViewHistoryMsg == allowViewHistoryMsg) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.onlineCount, onlineCount) ||
                other.onlineCount == onlineCount) &&
            (identical(other.quit, quit) || other.quit == quit) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.forbiddenExpirTime, forbiddenExpirTime) ||
                other.forbiddenExpirTime == forbiddenExpirTime) &&
            (identical(
                    other.allowMemberPinnedMessage, allowMemberPinnedMessage) ||
                other.allowMemberPinnedMessage == allowMemberPinnedMessage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        groupNo,
        groupType,
        name,
        remark,
        avatar,
        notice,
        mute,
        top,
        showNick,
        save,
        forbidden,
        invite,
        chatPwdOn,
        screenshot,
        revokeRemind,
        joinGroupRemind,
        forbiddenAddFriend,
        status,
        receipt,
        flame,
        flameSecond,
        allowViewHistoryMsg,
        memberCount,
        onlineCount,
        quit,
        role,
        forbiddenExpirTime,
        allowMemberPinnedMessage,
        createdAt,
        updatedAt,
        version
      ]);

  @override
  String toString() {
    return 'GroupInfo(groupNo: $groupNo, groupType: $groupType, name: $name, remark: $remark, avatar: $avatar, notice: $notice, mute: $mute, top: $top, showNick: $showNick, save: $save, forbidden: $forbidden, invite: $invite, chatPwdOn: $chatPwdOn, screenshot: $screenshot, revokeRemind: $revokeRemind, joinGroupRemind: $joinGroupRemind, forbiddenAddFriend: $forbiddenAddFriend, status: $status, receipt: $receipt, flame: $flame, flameSecond: $flameSecond, allowViewHistoryMsg: $allowViewHistoryMsg, memberCount: $memberCount, onlineCount: $onlineCount, quit: $quit, role: $role, forbiddenExpirTime: $forbiddenExpirTime, allowMemberPinnedMessage: $allowMemberPinnedMessage, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$GroupInfoCopyWith<$Res>
    implements $GroupInfoCopyWith<$Res> {
  factory _$GroupInfoCopyWith(
          _GroupInfo value, $Res Function(_GroupInfo) _then) =
      __$GroupInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String groupNo,
      int groupType,
      String name,
      String remark,
      String avatar,
      String notice,
      int mute,
      int top,
      int showNick,
      int save,
      int forbidden,
      int invite,
      int chatPwdOn,
      int screenshot,
      int revokeRemind,
      int joinGroupRemind,
      int forbiddenAddFriend,
      int status,
      int receipt,
      int flame,
      int flameSecond,
      int allowViewHistoryMsg,
      int memberCount,
      int onlineCount,
      int quit,
      int role,
      int forbiddenExpirTime,
      int allowMemberPinnedMessage,
      String createdAt,
      String updatedAt,
      int version});
}

/// @nodoc
class __$GroupInfoCopyWithImpl<$Res> implements _$GroupInfoCopyWith<$Res> {
  __$GroupInfoCopyWithImpl(this._self, this._then);

  final _GroupInfo _self;
  final $Res Function(_GroupInfo) _then;

  /// Create a copy of GroupInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groupNo = null,
    Object? groupType = null,
    Object? name = null,
    Object? remark = null,
    Object? avatar = null,
    Object? notice = null,
    Object? mute = null,
    Object? top = null,
    Object? showNick = null,
    Object? save = null,
    Object? forbidden = null,
    Object? invite = null,
    Object? chatPwdOn = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? joinGroupRemind = null,
    Object? forbiddenAddFriend = null,
    Object? status = null,
    Object? receipt = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? allowViewHistoryMsg = null,
    Object? memberCount = null,
    Object? onlineCount = null,
    Object? quit = null,
    Object? role = null,
    Object? forbiddenExpirTime = null,
    Object? allowMemberPinnedMessage = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_GroupInfo(
      groupNo: null == groupNo
          ? _self.groupNo
          : groupNo // ignore: cast_nullable_to_non_nullable
              as String,
      groupType: null == groupType
          ? _self.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      notice: null == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      showNick: null == showNick
          ? _self.showNick
          : showNick // ignore: cast_nullable_to_non_nullable
              as int,
      save: null == save
          ? _self.save
          : save // ignore: cast_nullable_to_non_nullable
              as int,
      forbidden: null == forbidden
          ? _self.forbidden
          : forbidden // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _self.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as int,
      chatPwdOn: null == chatPwdOn
          ? _self.chatPwdOn
          : chatPwdOn // ignore: cast_nullable_to_non_nullable
              as int,
      screenshot: null == screenshot
          ? _self.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as int,
      revokeRemind: null == revokeRemind
          ? _self.revokeRemind
          : revokeRemind // ignore: cast_nullable_to_non_nullable
              as int,
      joinGroupRemind: null == joinGroupRemind
          ? _self.joinGroupRemind
          : joinGroupRemind // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenAddFriend: null == forbiddenAddFriend
          ? _self.forbiddenAddFriend
          : forbiddenAddFriend // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      allowViewHistoryMsg: null == allowViewHistoryMsg
          ? _self.allowViewHistoryMsg
          : allowViewHistoryMsg // ignore: cast_nullable_to_non_nullable
              as int,
      memberCount: null == memberCount
          ? _self.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      onlineCount: null == onlineCount
          ? _self.onlineCount
          : onlineCount // ignore: cast_nullable_to_non_nullable
              as int,
      quit: null == quit
          ? _self.quit
          : quit // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenExpirTime: null == forbiddenExpirTime
          ? _self.forbiddenExpirTime
          : forbiddenExpirTime // ignore: cast_nullable_to_non_nullable
              as int,
      allowMemberPinnedMessage: null == allowMemberPinnedMessage
          ? _self.allowMemberPinnedMessage
          : allowMemberPinnedMessage // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

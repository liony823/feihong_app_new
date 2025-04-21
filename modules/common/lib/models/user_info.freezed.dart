// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfo {
  String get uid;
  String get username;
  String get name;
  String? get email;
  String? get zone;
  String? get phone;
  int get mute;
  int get top;
  int get sex;
  String get introduction;
  String get category;
  String get shortNo;
  int get chatPwdOn;
  int get screenshot;
  int get revokeRemind;
  int get receipt;
  int get online;
  int get lastOffline;
  int get deviceFlag;
  int get follow;
  int get beDeleted;
  int get beBlacklist;
  String get code;
  String get vercode;
  String get sourceDesc;
  String get remark;
  int get isUploadAvatar;
  int get status;
  int get robot;
  int get isDestroy;
  int get flame;
  int get flameSecond;
  String get joinGroupInviteUid;
  String get joinGroupInviteName;
  GroupMember? get groupMember;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<UserInfo> get copyWith =>
      _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInfo &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.deviceFlag, deviceFlag) ||
                other.deviceFlag == deviceFlag) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.sourceDesc, sourceDesc) ||
                other.sourceDesc == sourceDesc) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.isUploadAvatar, isUploadAvatar) ||
                other.isUploadAvatar == isUploadAvatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.isDestroy, isDestroy) ||
                other.isDestroy == isDestroy) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.joinGroupInviteUid, joinGroupInviteUid) ||
                other.joinGroupInviteUid == joinGroupInviteUid) &&
            (identical(other.joinGroupInviteName, joinGroupInviteName) ||
                other.joinGroupInviteName == joinGroupInviteName) &&
            (identical(other.groupMember, groupMember) ||
                other.groupMember == groupMember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        username,
        name,
        email,
        zone,
        phone,
        mute,
        top,
        sex,
        introduction,
        category,
        shortNo,
        chatPwdOn,
        screenshot,
        revokeRemind,
        receipt,
        online,
        lastOffline,
        deviceFlag,
        follow,
        beDeleted,
        beBlacklist,
        code,
        vercode,
        sourceDesc,
        remark,
        isUploadAvatar,
        status,
        robot,
        isDestroy,
        flame,
        flameSecond,
        joinGroupInviteUid,
        joinGroupInviteName,
        groupMember
      ]);

  @override
  String toString() {
    return 'UserInfo(uid: $uid, username: $username, name: $name, email: $email, zone: $zone, phone: $phone, mute: $mute, top: $top, sex: $sex, introduction: $introduction, category: $category, shortNo: $shortNo, chatPwdOn: $chatPwdOn, screenshot: $screenshot, revokeRemind: $revokeRemind, receipt: $receipt, online: $online, lastOffline: $lastOffline, deviceFlag: $deviceFlag, follow: $follow, beDeleted: $beDeleted, beBlacklist: $beBlacklist, code: $code, vercode: $vercode, sourceDesc: $sourceDesc, remark: $remark, isUploadAvatar: $isUploadAvatar, status: $status, robot: $robot, isDestroy: $isDestroy, flame: $flame, flameSecond: $flameSecond, joinGroupInviteUid: $joinGroupInviteUid, joinGroupInviteName: $joinGroupInviteName, groupMember: $groupMember)';
  }
}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) =
      _$UserInfoCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String username,
      String name,
      String? email,
      String? zone,
      String? phone,
      int mute,
      int top,
      int sex,
      String introduction,
      String category,
      String shortNo,
      int chatPwdOn,
      int screenshot,
      int revokeRemind,
      int receipt,
      int online,
      int lastOffline,
      int deviceFlag,
      int follow,
      int beDeleted,
      int beBlacklist,
      String code,
      String vercode,
      String sourceDesc,
      String remark,
      int isUploadAvatar,
      int status,
      int robot,
      int isDestroy,
      int flame,
      int flameSecond,
      String joinGroupInviteUid,
      String joinGroupInviteName,
      GroupMember? groupMember});

  $GroupMemberCopyWith<$Res>? get groupMember;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? username = null,
    Object? name = null,
    Object? email = freezed,
    Object? zone = freezed,
    Object? phone = freezed,
    Object? mute = null,
    Object? top = null,
    Object? sex = null,
    Object? introduction = null,
    Object? category = null,
    Object? shortNo = null,
    Object? chatPwdOn = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? receipt = null,
    Object? online = null,
    Object? lastOffline = null,
    Object? deviceFlag = null,
    Object? follow = null,
    Object? beDeleted = null,
    Object? beBlacklist = null,
    Object? code = null,
    Object? vercode = null,
    Object? sourceDesc = null,
    Object? remark = null,
    Object? isUploadAvatar = null,
    Object? status = null,
    Object? robot = null,
    Object? isDestroy = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? joinGroupInviteUid = null,
    Object? joinGroupInviteName = null,
    Object? groupMember = freezed,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      zone: freezed == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
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
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      deviceFlag: null == deviceFlag
          ? _self.deviceFlag
          : deviceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      follow: null == follow
          ? _self.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      beDeleted: null == beDeleted
          ? _self.beDeleted
          : beDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      beBlacklist: null == beBlacklist
          ? _self.beBlacklist
          : beBlacklist // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDesc: null == sourceDesc
          ? _self.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isUploadAvatar: null == isUploadAvatar
          ? _self.isUploadAvatar
          : isUploadAvatar // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      isDestroy: null == isDestroy
          ? _self.isDestroy
          : isDestroy // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      joinGroupInviteUid: null == joinGroupInviteUid
          ? _self.joinGroupInviteUid
          : joinGroupInviteUid // ignore: cast_nullable_to_non_nullable
              as String,
      joinGroupInviteName: null == joinGroupInviteName
          ? _self.joinGroupInviteName
          : joinGroupInviteName // ignore: cast_nullable_to_non_nullable
              as String,
      groupMember: freezed == groupMember
          ? _self.groupMember
          : groupMember // ignore: cast_nullable_to_non_nullable
              as GroupMember?,
    ));
  }

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMemberCopyWith<$Res>? get groupMember {
    if (_self.groupMember == null) {
      return null;
    }

    return $GroupMemberCopyWith<$Res>(_self.groupMember!, (value) {
      return _then(_self.copyWith(groupMember: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserInfo implements UserInfo {
  const _UserInfo(
      {required this.uid,
      required this.username,
      required this.name,
      this.email,
      this.zone,
      this.phone,
      required this.mute,
      required this.top,
      required this.sex,
      required this.introduction,
      required this.category,
      required this.shortNo,
      required this.chatPwdOn,
      required this.screenshot,
      required this.revokeRemind,
      required this.receipt,
      required this.online,
      required this.lastOffline,
      required this.deviceFlag,
      required this.follow,
      required this.beDeleted,
      required this.beBlacklist,
      required this.code,
      required this.vercode,
      required this.sourceDesc,
      required this.remark,
      required this.isUploadAvatar,
      required this.status,
      required this.robot,
      required this.isDestroy,
      required this.flame,
      required this.flameSecond,
      required this.joinGroupInviteUid,
      required this.joinGroupInviteName,
      this.groupMember});
  factory _UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  @override
  final String uid;
  @override
  final String username;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String? zone;
  @override
  final String? phone;
  @override
  final int mute;
  @override
  final int top;
  @override
  final int sex;
  @override
  final String introduction;
  @override
  final String category;
  @override
  final String shortNo;
  @override
  final int chatPwdOn;
  @override
  final int screenshot;
  @override
  final int revokeRemind;
  @override
  final int receipt;
  @override
  final int online;
  @override
  final int lastOffline;
  @override
  final int deviceFlag;
  @override
  final int follow;
  @override
  final int beDeleted;
  @override
  final int beBlacklist;
  @override
  final String code;
  @override
  final String vercode;
  @override
  final String sourceDesc;
  @override
  final String remark;
  @override
  final int isUploadAvatar;
  @override
  final int status;
  @override
  final int robot;
  @override
  final int isDestroy;
  @override
  final int flame;
  @override
  final int flameSecond;
  @override
  final String joinGroupInviteUid;
  @override
  final String joinGroupInviteName;
  @override
  final GroupMember? groupMember;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfo &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.deviceFlag, deviceFlag) ||
                other.deviceFlag == deviceFlag) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.sourceDesc, sourceDesc) ||
                other.sourceDesc == sourceDesc) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.isUploadAvatar, isUploadAvatar) ||
                other.isUploadAvatar == isUploadAvatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.isDestroy, isDestroy) ||
                other.isDestroy == isDestroy) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.joinGroupInviteUid, joinGroupInviteUid) ||
                other.joinGroupInviteUid == joinGroupInviteUid) &&
            (identical(other.joinGroupInviteName, joinGroupInviteName) ||
                other.joinGroupInviteName == joinGroupInviteName) &&
            (identical(other.groupMember, groupMember) ||
                other.groupMember == groupMember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        username,
        name,
        email,
        zone,
        phone,
        mute,
        top,
        sex,
        introduction,
        category,
        shortNo,
        chatPwdOn,
        screenshot,
        revokeRemind,
        receipt,
        online,
        lastOffline,
        deviceFlag,
        follow,
        beDeleted,
        beBlacklist,
        code,
        vercode,
        sourceDesc,
        remark,
        isUploadAvatar,
        status,
        robot,
        isDestroy,
        flame,
        flameSecond,
        joinGroupInviteUid,
        joinGroupInviteName,
        groupMember
      ]);

  @override
  String toString() {
    return 'UserInfo(uid: $uid, username: $username, name: $name, email: $email, zone: $zone, phone: $phone, mute: $mute, top: $top, sex: $sex, introduction: $introduction, category: $category, shortNo: $shortNo, chatPwdOn: $chatPwdOn, screenshot: $screenshot, revokeRemind: $revokeRemind, receipt: $receipt, online: $online, lastOffline: $lastOffline, deviceFlag: $deviceFlag, follow: $follow, beDeleted: $beDeleted, beBlacklist: $beBlacklist, code: $code, vercode: $vercode, sourceDesc: $sourceDesc, remark: $remark, isUploadAvatar: $isUploadAvatar, status: $status, robot: $robot, isDestroy: $isDestroy, flame: $flame, flameSecond: $flameSecond, joinGroupInviteUid: $joinGroupInviteUid, joinGroupInviteName: $joinGroupInviteName, groupMember: $groupMember)';
  }
}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) =
      __$UserInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String username,
      String name,
      String? email,
      String? zone,
      String? phone,
      int mute,
      int top,
      int sex,
      String introduction,
      String category,
      String shortNo,
      int chatPwdOn,
      int screenshot,
      int revokeRemind,
      int receipt,
      int online,
      int lastOffline,
      int deviceFlag,
      int follow,
      int beDeleted,
      int beBlacklist,
      String code,
      String vercode,
      String sourceDesc,
      String remark,
      int isUploadAvatar,
      int status,
      int robot,
      int isDestroy,
      int flame,
      int flameSecond,
      String joinGroupInviteUid,
      String joinGroupInviteName,
      GroupMember? groupMember});

  @override
  $GroupMemberCopyWith<$Res>? get groupMember;
}

/// @nodoc
class __$UserInfoCopyWithImpl<$Res> implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? username = null,
    Object? name = null,
    Object? email = freezed,
    Object? zone = freezed,
    Object? phone = freezed,
    Object? mute = null,
    Object? top = null,
    Object? sex = null,
    Object? introduction = null,
    Object? category = null,
    Object? shortNo = null,
    Object? chatPwdOn = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? receipt = null,
    Object? online = null,
    Object? lastOffline = null,
    Object? deviceFlag = null,
    Object? follow = null,
    Object? beDeleted = null,
    Object? beBlacklist = null,
    Object? code = null,
    Object? vercode = null,
    Object? sourceDesc = null,
    Object? remark = null,
    Object? isUploadAvatar = null,
    Object? status = null,
    Object? robot = null,
    Object? isDestroy = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? joinGroupInviteUid = null,
    Object? joinGroupInviteName = null,
    Object? groupMember = freezed,
  }) {
    return _then(_UserInfo(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      zone: freezed == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
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
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      deviceFlag: null == deviceFlag
          ? _self.deviceFlag
          : deviceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      follow: null == follow
          ? _self.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      beDeleted: null == beDeleted
          ? _self.beDeleted
          : beDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      beBlacklist: null == beBlacklist
          ? _self.beBlacklist
          : beBlacklist // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDesc: null == sourceDesc
          ? _self.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isUploadAvatar: null == isUploadAvatar
          ? _self.isUploadAvatar
          : isUploadAvatar // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      isDestroy: null == isDestroy
          ? _self.isDestroy
          : isDestroy // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      joinGroupInviteUid: null == joinGroupInviteUid
          ? _self.joinGroupInviteUid
          : joinGroupInviteUid // ignore: cast_nullable_to_non_nullable
              as String,
      joinGroupInviteName: null == joinGroupInviteName
          ? _self.joinGroupInviteName
          : joinGroupInviteName // ignore: cast_nullable_to_non_nullable
              as String,
      groupMember: freezed == groupMember
          ? _self.groupMember
          : groupMember // ignore: cast_nullable_to_non_nullable
              as GroupMember?,
    ));
  }

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupMemberCopyWith<$Res>? get groupMember {
    if (_self.groupMember == null) {
      return null;
    }

    return $GroupMemberCopyWith<$Res>(_self.groupMember!, (value) {
      return _then(_self.copyWith(groupMember: value));
    });
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupMember {
  String get uid;
  String get groupNo;
  String get name;
  String get username;
  String get remark;
  int get role;
  int get isDeleted;
  int get status;
  String get vercode;
  String get inviteUid;
  int get robot;
  int get forbiddenExpirTime;
  String get createdAt;
  String get updatedAt;
  int get version;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      _$GroupMemberCopyWithImpl<GroupMember>(this as GroupMember, _$identity);

  /// Serializes this GroupMember to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupMember &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.groupNo, groupNo) || other.groupNo == groupNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.inviteUid, inviteUid) ||
                other.inviteUid == inviteUid) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.forbiddenExpirTime, forbiddenExpirTime) ||
                other.forbiddenExpirTime == forbiddenExpirTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      groupNo,
      name,
      username,
      remark,
      role,
      isDeleted,
      status,
      vercode,
      inviteUid,
      robot,
      forbiddenExpirTime,
      createdAt,
      updatedAt,
      version);

  @override
  String toString() {
    return 'GroupMember(uid: $uid, groupNo: $groupNo, name: $name, username: $username, remark: $remark, role: $role, isDeleted: $isDeleted, status: $status, vercode: $vercode, inviteUid: $inviteUid, robot: $robot, forbiddenExpirTime: $forbiddenExpirTime, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }
}

/// @nodoc
abstract mixin class $GroupMemberCopyWith<$Res> {
  factory $GroupMemberCopyWith(
          GroupMember value, $Res Function(GroupMember) _then) =
      _$GroupMemberCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String groupNo,
      String name,
      String username,
      String remark,
      int role,
      int isDeleted,
      int status,
      String vercode,
      String inviteUid,
      int robot,
      int forbiddenExpirTime,
      String createdAt,
      String updatedAt,
      int version});
}

/// @nodoc
class _$GroupMemberCopyWithImpl<$Res> implements $GroupMemberCopyWith<$Res> {
  _$GroupMemberCopyWithImpl(this._self, this._then);

  final GroupMember _self;
  final $Res Function(GroupMember) _then;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? groupNo = null,
    Object? name = null,
    Object? username = null,
    Object? remark = null,
    Object? role = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? vercode = null,
    Object? inviteUid = null,
    Object? robot = null,
    Object? forbiddenExpirTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groupNo: null == groupNo
          ? _self.groupNo
          : groupNo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      inviteUid: null == inviteUid
          ? _self.inviteUid
          : inviteUid // ignore: cast_nullable_to_non_nullable
              as String,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenExpirTime: null == forbiddenExpirTime
          ? _self.forbiddenExpirTime
          : forbiddenExpirTime // ignore: cast_nullable_to_non_nullable
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
class _GroupMember implements GroupMember {
  const _GroupMember(
      {required this.uid,
      required this.groupNo,
      this.name = "",
      this.username = "",
      this.remark = "",
      this.role = 0,
      this.isDeleted = 0,
      this.status = 0,
      this.vercode = "",
      this.inviteUid = "",
      this.robot = 0,
      this.forbiddenExpirTime = 0,
      this.createdAt = "",
      this.updatedAt = "",
      this.version = 0});
  factory _GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);

  @override
  final String uid;
  @override
  final String groupNo;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final int role;
  @override
  @JsonKey()
  final int isDeleted;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String vercode;
  @override
  @JsonKey()
  final String inviteUid;
  @override
  @JsonKey()
  final int robot;
  @override
  @JsonKey()
  final int forbiddenExpirTime;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final int version;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupMemberCopyWith<_GroupMember> get copyWith =>
      __$GroupMemberCopyWithImpl<_GroupMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupMemberToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupMember &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.groupNo, groupNo) || other.groupNo == groupNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.inviteUid, inviteUid) ||
                other.inviteUid == inviteUid) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.forbiddenExpirTime, forbiddenExpirTime) ||
                other.forbiddenExpirTime == forbiddenExpirTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      groupNo,
      name,
      username,
      remark,
      role,
      isDeleted,
      status,
      vercode,
      inviteUid,
      robot,
      forbiddenExpirTime,
      createdAt,
      updatedAt,
      version);

  @override
  String toString() {
    return 'GroupMember(uid: $uid, groupNo: $groupNo, name: $name, username: $username, remark: $remark, role: $role, isDeleted: $isDeleted, status: $status, vercode: $vercode, inviteUid: $inviteUid, robot: $robot, forbiddenExpirTime: $forbiddenExpirTime, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$GroupMemberCopyWith<$Res>
    implements $GroupMemberCopyWith<$Res> {
  factory _$GroupMemberCopyWith(
          _GroupMember value, $Res Function(_GroupMember) _then) =
      __$GroupMemberCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String groupNo,
      String name,
      String username,
      String remark,
      int role,
      int isDeleted,
      int status,
      String vercode,
      String inviteUid,
      int robot,
      int forbiddenExpirTime,
      String createdAt,
      String updatedAt,
      int version});
}

/// @nodoc
class __$GroupMemberCopyWithImpl<$Res> implements _$GroupMemberCopyWith<$Res> {
  __$GroupMemberCopyWithImpl(this._self, this._then);

  final _GroupMember _self;
  final $Res Function(_GroupMember) _then;

  /// Create a copy of GroupMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? groupNo = null,
    Object? name = null,
    Object? username = null,
    Object? remark = null,
    Object? role = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? vercode = null,
    Object? inviteUid = null,
    Object? robot = null,
    Object? forbiddenExpirTime = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? version = null,
  }) {
    return _then(_GroupMember(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groupNo: null == groupNo
          ? _self.groupNo
          : groupNo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      inviteUid: null == inviteUid
          ? _self.inviteUid
          : inviteUid // ignore: cast_nullable_to_non_nullable
              as String,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      forbiddenExpirTime: null == forbiddenExpirTime
          ? _self.forbiddenExpirTime
          : forbiddenExpirTime // ignore: cast_nullable_to_non_nullable
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

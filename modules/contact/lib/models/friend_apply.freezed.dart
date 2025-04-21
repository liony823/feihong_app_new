// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_apply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendApply {
  String get uid;
  String get toUid;
  String get toName;
  @FriendApplyStatusConverter()
  FriendApplyStatus get status;
  String get remark;
  String get createdAt;
  String get token;

  /// Create a copy of FriendApply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FriendApplyCopyWith<FriendApply> get copyWith =>
      _$FriendApplyCopyWithImpl<FriendApply>(this as FriendApply, _$identity);

  /// Serializes this FriendApply to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FriendApply &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.toUid, toUid) || other.toUid == toUid) &&
            (identical(other.toName, toName) || other.toName == toName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, toUid, toName, status, remark, createdAt, token);

  @override
  String toString() {
    return 'FriendApply(uid: $uid, toUid: $toUid, toName: $toName, status: $status, remark: $remark, createdAt: $createdAt, token: $token)';
  }
}

/// @nodoc
abstract mixin class $FriendApplyCopyWith<$Res> {
  factory $FriendApplyCopyWith(
          FriendApply value, $Res Function(FriendApply) _then) =
      _$FriendApplyCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String toUid,
      String toName,
      @FriendApplyStatusConverter() FriendApplyStatus status,
      String remark,
      String createdAt,
      String token});
}

/// @nodoc
class _$FriendApplyCopyWithImpl<$Res> implements $FriendApplyCopyWith<$Res> {
  _$FriendApplyCopyWithImpl(this._self, this._then);

  final FriendApply _self;
  final $Res Function(FriendApply) _then;

  /// Create a copy of FriendApply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? toUid = null,
    Object? toName = null,
    Object? status = null,
    Object? remark = null,
    Object? createdAt = null,
    Object? token = null,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      toUid: null == toUid
          ? _self.toUid
          : toUid // ignore: cast_nullable_to_non_nullable
              as String,
      toName: null == toName
          ? _self.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendApplyStatus,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FriendApply extends FriendApply {
  const _FriendApply(
      {required this.uid,
      required this.toUid,
      required this.toName,
      @FriendApplyStatusConverter() this.status = FriendApplyStatus.apply,
      this.remark = '',
      this.createdAt = '',
      this.token = ''})
      : super._();
  factory _FriendApply.fromJson(Map<String, dynamic> json) =>
      _$FriendApplyFromJson(json);

  @override
  final String uid;
  @override
  final String toUid;
  @override
  final String toName;
  @override
  @JsonKey()
  @FriendApplyStatusConverter()
  final FriendApplyStatus status;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String token;

  /// Create a copy of FriendApply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FriendApplyCopyWith<_FriendApply> get copyWith =>
      __$FriendApplyCopyWithImpl<_FriendApply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FriendApplyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FriendApply &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.toUid, toUid) || other.toUid == toUid) &&
            (identical(other.toName, toName) || other.toName == toName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, toUid, toName, status, remark, createdAt, token);

  @override
  String toString() {
    return 'FriendApply(uid: $uid, toUid: $toUid, toName: $toName, status: $status, remark: $remark, createdAt: $createdAt, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$FriendApplyCopyWith<$Res>
    implements $FriendApplyCopyWith<$Res> {
  factory _$FriendApplyCopyWith(
          _FriendApply value, $Res Function(_FriendApply) _then) =
      __$FriendApplyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String toUid,
      String toName,
      @FriendApplyStatusConverter() FriendApplyStatus status,
      String remark,
      String createdAt,
      String token});
}

/// @nodoc
class __$FriendApplyCopyWithImpl<$Res> implements _$FriendApplyCopyWith<$Res> {
  __$FriendApplyCopyWithImpl(this._self, this._then);

  final _FriendApply _self;
  final $Res Function(_FriendApply) _then;

  /// Create a copy of FriendApply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? toUid = null,
    Object? toName = null,
    Object? status = null,
    Object? remark = null,
    Object? createdAt = null,
    Object? token = null,
  }) {
    return _then(_FriendApply(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      toUid: null == toUid
          ? _self.toUid
          : toUid // ignore: cast_nullable_to_non_nullable
              as String,
      toName: null == toName
          ? _self.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FriendApplyStatus,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

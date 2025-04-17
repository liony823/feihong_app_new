// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBAccount {
  int get id;
  String get username;
  String get zone;
  String get phone;
  String get password;
  int get loginType;
  int get createdAt;
  int get updatedAt;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DBAccountCopyWith<DBAccount> get copyWith =>
      _$DBAccountCopyWithImpl<DBAccount>(this as DBAccount, _$identity);

  /// Serializes this DBAccount to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DBAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, zone, phone,
      password, loginType, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBAccount(id: $id, username: $username, zone: $zone, phone: $phone, password: $password, loginType: $loginType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DBAccountCopyWith<$Res> {
  factory $DBAccountCopyWith(DBAccount value, $Res Function(DBAccount) _then) =
      _$DBAccountCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String username,
      String zone,
      String phone,
      String password,
      int loginType,
      int createdAt,
      int updatedAt});
}

/// @nodoc
class _$DBAccountCopyWithImpl<$Res> implements $DBAccountCopyWith<$Res> {
  _$DBAccountCopyWithImpl(this._self, this._then);

  final DBAccount _self;
  final $Res Function(DBAccount) _then;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? zone = null,
    Object? phone = null,
    Object? password = null,
    Object? loginType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _self.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DBAccount implements DBAccount {
  const _DBAccount(
      {this.id = 0,
      required this.username,
      required this.zone,
      required this.phone,
      required this.password,
      required this.loginType,
      this.createdAt = 0,
      this.updatedAt = 0});
  factory _DBAccount.fromJson(Map<String, dynamic> json) =>
      _$DBAccountFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String username;
  @override
  final String zone;
  @override
  final String phone;
  @override
  final String password;
  @override
  final int loginType;
  @override
  @JsonKey()
  final int createdAt;
  @override
  @JsonKey()
  final int updatedAt;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DBAccountCopyWith<_DBAccount> get copyWith =>
      __$DBAccountCopyWithImpl<_DBAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DBAccountToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DBAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, zone, phone,
      password, loginType, createdAt, updatedAt);

  @override
  String toString() {
    return 'DBAccount(id: $id, username: $username, zone: $zone, phone: $phone, password: $password, loginType: $loginType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$DBAccountCopyWith<$Res>
    implements $DBAccountCopyWith<$Res> {
  factory _$DBAccountCopyWith(
          _DBAccount value, $Res Function(_DBAccount) _then) =
      __$DBAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String zone,
      String phone,
      String password,
      int loginType,
      int createdAt,
      int updatedAt});
}

/// @nodoc
class __$DBAccountCopyWithImpl<$Res> implements _$DBAccountCopyWith<$Res> {
  __$DBAccountCopyWithImpl(this._self, this._then);

  final _DBAccount _self;
  final $Res Function(_DBAccount) _then;

  /// Create a copy of DBAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? zone = null,
    Object? phone = null,
    Object? password = null,
    Object? loginType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_DBAccount(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _self.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

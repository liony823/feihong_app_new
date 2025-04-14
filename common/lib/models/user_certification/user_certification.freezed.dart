// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_certification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCertification {

 String get token; String get uid; int get tokenExpiredAt;
/// Create a copy of UserCertification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCertificationCopyWith<UserCertification> get copyWith => _$UserCertificationCopyWithImpl<UserCertification>(this as UserCertification, _$identity);

  /// Serializes this UserCertification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCertification&&(identical(other.token, token) || other.token == token)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.tokenExpiredAt, tokenExpiredAt) || other.tokenExpiredAt == tokenExpiredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,uid,tokenExpiredAt);

@override
String toString() {
  return 'UserCertification(token: $token, uid: $uid, tokenExpiredAt: $tokenExpiredAt)';
}


}

/// @nodoc
abstract mixin class $UserCertificationCopyWith<$Res>  {
  factory $UserCertificationCopyWith(UserCertification value, $Res Function(UserCertification) _then) = _$UserCertificationCopyWithImpl;
@useResult
$Res call({
 String token, String uid, int tokenExpiredAt
});




}
/// @nodoc
class _$UserCertificationCopyWithImpl<$Res>
    implements $UserCertificationCopyWith<$Res> {
  _$UserCertificationCopyWithImpl(this._self, this._then);

  final UserCertification _self;
  final $Res Function(UserCertification) _then;

/// Create a copy of UserCertification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? uid = null,Object? tokenExpiredAt = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,tokenExpiredAt: null == tokenExpiredAt ? _self.tokenExpiredAt : tokenExpiredAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserCertification implements UserCertification {
  const _UserCertification({required this.token, required this.uid, required this.tokenExpiredAt});
  factory _UserCertification.fromJson(Map<String, dynamic> json) => _$UserCertificationFromJson(json);

@override final  String token;
@override final  String uid;
@override final  int tokenExpiredAt;

/// Create a copy of UserCertification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCertificationCopyWith<_UserCertification> get copyWith => __$UserCertificationCopyWithImpl<_UserCertification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCertificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCertification&&(identical(other.token, token) || other.token == token)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.tokenExpiredAt, tokenExpiredAt) || other.tokenExpiredAt == tokenExpiredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,uid,tokenExpiredAt);

@override
String toString() {
  return 'UserCertification(token: $token, uid: $uid, tokenExpiredAt: $tokenExpiredAt)';
}


}

/// @nodoc
abstract mixin class _$UserCertificationCopyWith<$Res> implements $UserCertificationCopyWith<$Res> {
  factory _$UserCertificationCopyWith(_UserCertification value, $Res Function(_UserCertification) _then) = __$UserCertificationCopyWithImpl;
@override @useResult
$Res call({
 String token, String uid, int tokenExpiredAt
});




}
/// @nodoc
class __$UserCertificationCopyWithImpl<$Res>
    implements _$UserCertificationCopyWith<$Res> {
  __$UserCertificationCopyWithImpl(this._self, this._then);

  final _UserCertification _self;
  final $Res Function(_UserCertification) _then;

/// Create a copy of UserCertification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? uid = null,Object? tokenExpiredAt = null,}) {
  return _then(_UserCertification(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,tokenExpiredAt: null == tokenExpiredAt ? _self.tokenExpiredAt : tokenExpiredAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

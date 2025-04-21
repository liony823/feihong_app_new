// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchUserInfo {
  String get uid;
  String get name;
  int get sex;
  String get introduction;
  String get vercode;

  /// Create a copy of SearchUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchUserInfoCopyWith<SearchUserInfo> get copyWith =>
      _$SearchUserInfoCopyWithImpl<SearchUserInfo>(
          this as SearchUserInfo, _$identity);

  /// Serializes this SearchUserInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUserInfo &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.vercode, vercode) || other.vercode == vercode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, name, sex, introduction, vercode);

  @override
  String toString() {
    return 'SearchUserInfo(uid: $uid, name: $name, sex: $sex, introduction: $introduction, vercode: $vercode)';
  }
}

/// @nodoc
abstract mixin class $SearchUserInfoCopyWith<$Res> {
  factory $SearchUserInfoCopyWith(
          SearchUserInfo value, $Res Function(SearchUserInfo) _then) =
      _$SearchUserInfoCopyWithImpl;
  @useResult
  $Res call(
      {String uid, String name, int sex, String introduction, String vercode});
}

/// @nodoc
class _$SearchUserInfoCopyWithImpl<$Res>
    implements $SearchUserInfoCopyWith<$Res> {
  _$SearchUserInfoCopyWithImpl(this._self, this._then);

  final SearchUserInfo _self;
  final $Res Function(SearchUserInfo) _then;

  /// Create a copy of SearchUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? sex = null,
    Object? introduction = null,
    Object? vercode = null,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SearchUserInfo implements SearchUserInfo {
  const _SearchUserInfo(
      {required this.uid,
      required this.name,
      required this.sex,
      required this.introduction,
      required this.vercode});
  factory _SearchUserInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchUserInfoFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final int sex;
  @override
  final String introduction;
  @override
  final String vercode;

  /// Create a copy of SearchUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchUserInfoCopyWith<_SearchUserInfo> get copyWith =>
      __$SearchUserInfoCopyWithImpl<_SearchUserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchUserInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserInfo &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.vercode, vercode) || other.vercode == vercode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, name, sex, introduction, vercode);

  @override
  String toString() {
    return 'SearchUserInfo(uid: $uid, name: $name, sex: $sex, introduction: $introduction, vercode: $vercode)';
  }
}

/// @nodoc
abstract mixin class _$SearchUserInfoCopyWith<$Res>
    implements $SearchUserInfoCopyWith<$Res> {
  factory _$SearchUserInfoCopyWith(
          _SearchUserInfo value, $Res Function(_SearchUserInfo) _then) =
      __$SearchUserInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid, String name, int sex, String introduction, String vercode});
}

/// @nodoc
class __$SearchUserInfoCopyWithImpl<$Res>
    implements _$SearchUserInfoCopyWith<$Res> {
  __$SearchUserInfoCopyWithImpl(this._self, this._then);

  final _SearchUserInfo _self;
  final $Res Function(_SearchUserInfo) _then;

  /// Create a copy of SearchUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? sex = null,
    Object? introduction = null,
    Object? vercode = null,
  }) {
    return _then(_SearchUserInfo(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

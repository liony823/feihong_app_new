// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppModule {
  String get sid;
  String get name;
  String get desc;
  int get status;

  /// Create a copy of AppModule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppModuleCopyWith<AppModule> get copyWith =>
      _$AppModuleCopyWithImpl<AppModule>(this as AppModule, _$identity);

  /// Serializes this AppModule to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppModule &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sid, name, desc, status);

  @override
  String toString() {
    return 'AppModule(sid: $sid, name: $name, desc: $desc, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AppModuleCopyWith<$Res> {
  factory $AppModuleCopyWith(AppModule value, $Res Function(AppModule) _then) =
      _$AppModuleCopyWithImpl;
  @useResult
  $Res call({String sid, String name, String desc, int status});
}

/// @nodoc
class _$AppModuleCopyWithImpl<$Res> implements $AppModuleCopyWith<$Res> {
  _$AppModuleCopyWithImpl(this._self, this._then);

  final AppModule _self;
  final $Res Function(AppModule) _then;

  /// Create a copy of AppModule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? name = null,
    Object? desc = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      sid: null == sid
          ? _self.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppModule implements AppModule {
  const _AppModule(
      {required this.sid,
      required this.name,
      required this.desc,
      required this.status});
  factory _AppModule.fromJson(Map<String, dynamic> json) =>
      _$AppModuleFromJson(json);

  @override
  final String sid;
  @override
  final String name;
  @override
  final String desc;
  @override
  final int status;

  /// Create a copy of AppModule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppModuleCopyWith<_AppModule> get copyWith =>
      __$AppModuleCopyWithImpl<_AppModule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppModuleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppModule &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sid, name, desc, status);

  @override
  String toString() {
    return 'AppModule(sid: $sid, name: $name, desc: $desc, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$AppModuleCopyWith<$Res>
    implements $AppModuleCopyWith<$Res> {
  factory _$AppModuleCopyWith(
          _AppModule value, $Res Function(_AppModule) _then) =
      __$AppModuleCopyWithImpl;
  @override
  @useResult
  $Res call({String sid, String name, String desc, int status});
}

/// @nodoc
class __$AppModuleCopyWithImpl<$Res> implements _$AppModuleCopyWith<$Res> {
  __$AppModuleCopyWithImpl(this._self, this._then);

  final _AppModule _self;
  final $Res Function(_AppModule) _then;

  /// Create a copy of AppModule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sid = null,
    Object? name = null,
    Object? desc = null,
    Object? status = null,
  }) {
    return _then(_AppModule(
      sid: null == sid
          ? _self.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

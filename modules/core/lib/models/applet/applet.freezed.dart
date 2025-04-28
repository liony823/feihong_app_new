// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Applet {
  int get id;
  String get displayName;
  String get key;
  String get icon;
  String get link;
  int get priority;
  int get status;
  int get isDefault;
  String get createdAt;
  String get updatedAt;

  /// Create a copy of Applet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppletCopyWith<Applet> get copyWith =>
      _$AppletCopyWithImpl<Applet>(this as Applet, _$identity);

  /// Serializes this Applet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Applet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, key, icon, link,
      priority, status, isDefault, createdAt, updatedAt);

  @override
  String toString() {
    return 'Applet(id: $id, displayName: $displayName, key: $key, icon: $icon, link: $link, priority: $priority, status: $status, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $AppletCopyWith<$Res> {
  factory $AppletCopyWith(Applet value, $Res Function(Applet) _then) =
      _$AppletCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String displayName,
      String key,
      String icon,
      String link,
      int priority,
      int status,
      int isDefault,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$AppletCopyWithImpl<$Res> implements $AppletCopyWith<$Res> {
  _$AppletCopyWithImpl(this._self, this._then);

  final Applet _self;
  final $Res Function(Applet) _then;

  /// Create a copy of Applet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? key = null,
    Object? icon = null,
    Object? link = null,
    Object? priority = null,
    Object? status = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Applet implements Applet {
  const _Applet(
      {required this.id,
      required this.displayName,
      required this.key,
      required this.icon,
      required this.link,
      required this.priority,
      required this.status,
      required this.isDefault,
      required this.createdAt,
      required this.updatedAt});
  factory _Applet.fromJson(Map<String, dynamic> json) => _$AppletFromJson(json);

  @override
  final int id;
  @override
  final String displayName;
  @override
  final String key;
  @override
  final String icon;
  @override
  final String link;
  @override
  final int priority;
  @override
  final int status;
  @override
  final int isDefault;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  /// Create a copy of Applet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppletCopyWith<_Applet> get copyWith =>
      __$AppletCopyWithImpl<_Applet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppletToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Applet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, key, icon, link,
      priority, status, isDefault, createdAt, updatedAt);

  @override
  String toString() {
    return 'Applet(id: $id, displayName: $displayName, key: $key, icon: $icon, link: $link, priority: $priority, status: $status, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$AppletCopyWith<$Res> implements $AppletCopyWith<$Res> {
  factory _$AppletCopyWith(_Applet value, $Res Function(_Applet) _then) =
      __$AppletCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String displayName,
      String key,
      String icon,
      String link,
      int priority,
      int status,
      int isDefault,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$AppletCopyWithImpl<$Res> implements _$AppletCopyWith<$Res> {
  __$AppletCopyWithImpl(this._self, this._then);

  final _Applet _self;
  final $Res Function(_Applet) _then;

  /// Create a copy of Applet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? key = null,
    Object? icon = null,
    Object? link = null,
    Object? priority = null,
    Object? status = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Applet(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

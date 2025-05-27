// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChannelSimpleState {
  String get channelId;
  int get channelType;
  int get calling;

  /// Create a copy of ChannelSimpleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelSimpleStateCopyWith<ChannelSimpleState> get copyWith =>
      _$ChannelSimpleStateCopyWithImpl<ChannelSimpleState>(
          this as ChannelSimpleState, _$identity);

  /// Serializes this ChannelSimpleState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelSimpleState &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.calling, calling) || other.calling == calling));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, channelType, calling);

  @override
  String toString() {
    return 'ChannelSimpleState(channelId: $channelId, channelType: $channelType, calling: $calling)';
  }
}

/// @nodoc
abstract mixin class $ChannelSimpleStateCopyWith<$Res> {
  factory $ChannelSimpleStateCopyWith(
          ChannelSimpleState value, $Res Function(ChannelSimpleState) _then) =
      _$ChannelSimpleStateCopyWithImpl;
  @useResult
  $Res call({String channelId, int channelType, int calling});
}

/// @nodoc
class _$ChannelSimpleStateCopyWithImpl<$Res>
    implements $ChannelSimpleStateCopyWith<$Res> {
  _$ChannelSimpleStateCopyWithImpl(this._self, this._then);

  final ChannelSimpleState _self;
  final $Res Function(ChannelSimpleState) _then;

  /// Create a copy of ChannelSimpleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? channelType = null,
    Object? calling = null,
  }) {
    return _then(_self.copyWith(
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _self.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as int,
      calling: null == calling
          ? _self.calling
          : calling // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChannelSimpleState implements ChannelSimpleState {
  const _ChannelSimpleState(
      {required this.channelId,
      required this.channelType,
      required this.calling});
  factory _ChannelSimpleState.fromJson(Map<String, dynamic> json) =>
      _$ChannelSimpleStateFromJson(json);

  @override
  final String channelId;
  @override
  final int channelType;
  @override
  final int calling;

  /// Create a copy of ChannelSimpleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelSimpleStateCopyWith<_ChannelSimpleState> get copyWith =>
      __$ChannelSimpleStateCopyWithImpl<_ChannelSimpleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelSimpleStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelSimpleState &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.calling, calling) || other.calling == calling));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, channelType, calling);

  @override
  String toString() {
    return 'ChannelSimpleState(channelId: $channelId, channelType: $channelType, calling: $calling)';
  }
}

/// @nodoc
abstract mixin class _$ChannelSimpleStateCopyWith<$Res>
    implements $ChannelSimpleStateCopyWith<$Res> {
  factory _$ChannelSimpleStateCopyWith(
          _ChannelSimpleState value, $Res Function(_ChannelSimpleState) _then) =
      __$ChannelSimpleStateCopyWithImpl;
  @override
  @useResult
  $Res call({String channelId, int channelType, int calling});
}

/// @nodoc
class __$ChannelSimpleStateCopyWithImpl<$Res>
    implements _$ChannelSimpleStateCopyWith<$Res> {
  __$ChannelSimpleStateCopyWithImpl(this._self, this._then);

  final _ChannelSimpleState _self;
  final $Res Function(_ChannelSimpleState) _then;

  /// Create a copy of ChannelSimpleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channelId = null,
    Object? channelType = null,
    Object? calling = null,
  }) {
    return _then(_ChannelSimpleState(
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _self.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as int,
      calling: null == calling
          ? _self.calling
          : calling // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

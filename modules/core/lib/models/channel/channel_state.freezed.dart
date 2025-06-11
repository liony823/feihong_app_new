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
  int? get calling;

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
  $Res call({String channelId, int channelType, int? calling});
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
    Object? calling = freezed,
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
      calling: freezed == calling
          ? _self.calling
          : calling // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChannelSimpleState implements ChannelSimpleState {
  const _ChannelSimpleState(
      {required this.channelId, required this.channelType, this.calling});
  factory _ChannelSimpleState.fromJson(Map<String, dynamic> json) =>
      _$ChannelSimpleStateFromJson(json);

  @override
  final String channelId;
  @override
  final int channelType;
  @override
  final int? calling;

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
  $Res call({String channelId, int channelType, int? calling});
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
    Object? calling = freezed,
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
      calling: freezed == calling
          ? _self.calling
          : calling // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$WKChannelState {
  int get signalOn;
  int get onlineCount;
  CallInfo? get callInfo;

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WKChannelStateCopyWith<WKChannelState> get copyWith =>
      _$WKChannelStateCopyWithImpl<WKChannelState>(
          this as WKChannelState, _$identity);

  /// Serializes this WKChannelState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WKChannelState &&
            (identical(other.signalOn, signalOn) ||
                other.signalOn == signalOn) &&
            (identical(other.onlineCount, onlineCount) ||
                other.onlineCount == onlineCount) &&
            (identical(other.callInfo, callInfo) ||
                other.callInfo == callInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signalOn, onlineCount, callInfo);

  @override
  String toString() {
    return 'WKChannelState(signalOn: $signalOn, onlineCount: $onlineCount, callInfo: $callInfo)';
  }
}

/// @nodoc
abstract mixin class $WKChannelStateCopyWith<$Res> {
  factory $WKChannelStateCopyWith(
          WKChannelState value, $Res Function(WKChannelState) _then) =
      _$WKChannelStateCopyWithImpl;
  @useResult
  $Res call({int signalOn, int onlineCount, CallInfo? callInfo});

  $CallInfoCopyWith<$Res>? get callInfo;
}

/// @nodoc
class _$WKChannelStateCopyWithImpl<$Res>
    implements $WKChannelStateCopyWith<$Res> {
  _$WKChannelStateCopyWithImpl(this._self, this._then);

  final WKChannelState _self;
  final $Res Function(WKChannelState) _then;

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signalOn = null,
    Object? onlineCount = null,
    Object? callInfo = freezed,
  }) {
    return _then(_self.copyWith(
      signalOn: null == signalOn
          ? _self.signalOn
          : signalOn // ignore: cast_nullable_to_non_nullable
              as int,
      onlineCount: null == onlineCount
          ? _self.onlineCount
          : onlineCount // ignore: cast_nullable_to_non_nullable
              as int,
      callInfo: freezed == callInfo
          ? _self.callInfo
          : callInfo // ignore: cast_nullable_to_non_nullable
              as CallInfo?,
    ));
  }

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallInfoCopyWith<$Res>? get callInfo {
    if (_self.callInfo == null) {
      return null;
    }

    return $CallInfoCopyWith<$Res>(_self.callInfo!, (value) {
      return _then(_self.copyWith(callInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _WKChannelState implements WKChannelState {
  const _WKChannelState(
      {required this.signalOn, required this.onlineCount, this.callInfo});
  factory _WKChannelState.fromJson(Map<String, dynamic> json) =>
      _$WKChannelStateFromJson(json);

  @override
  final int signalOn;
  @override
  final int onlineCount;
  @override
  final CallInfo? callInfo;

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WKChannelStateCopyWith<_WKChannelState> get copyWith =>
      __$WKChannelStateCopyWithImpl<_WKChannelState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WKChannelStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WKChannelState &&
            (identical(other.signalOn, signalOn) ||
                other.signalOn == signalOn) &&
            (identical(other.onlineCount, onlineCount) ||
                other.onlineCount == onlineCount) &&
            (identical(other.callInfo, callInfo) ||
                other.callInfo == callInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signalOn, onlineCount, callInfo);

  @override
  String toString() {
    return 'WKChannelState(signalOn: $signalOn, onlineCount: $onlineCount, callInfo: $callInfo)';
  }
}

/// @nodoc
abstract mixin class _$WKChannelStateCopyWith<$Res>
    implements $WKChannelStateCopyWith<$Res> {
  factory _$WKChannelStateCopyWith(
          _WKChannelState value, $Res Function(_WKChannelState) _then) =
      __$WKChannelStateCopyWithImpl;
  @override
  @useResult
  $Res call({int signalOn, int onlineCount, CallInfo? callInfo});

  @override
  $CallInfoCopyWith<$Res>? get callInfo;
}

/// @nodoc
class __$WKChannelStateCopyWithImpl<$Res>
    implements _$WKChannelStateCopyWith<$Res> {
  __$WKChannelStateCopyWithImpl(this._self, this._then);

  final _WKChannelState _self;
  final $Res Function(_WKChannelState) _then;

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? signalOn = null,
    Object? onlineCount = null,
    Object? callInfo = freezed,
  }) {
    return _then(_WKChannelState(
      signalOn: null == signalOn
          ? _self.signalOn
          : signalOn // ignore: cast_nullable_to_non_nullable
              as int,
      onlineCount: null == onlineCount
          ? _self.onlineCount
          : onlineCount // ignore: cast_nullable_to_non_nullable
              as int,
      callInfo: freezed == callInfo
          ? _self.callInfo
          : callInfo // ignore: cast_nullable_to_non_nullable
              as CallInfo?,
    ));
  }

  /// Create a copy of WKChannelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallInfoCopyWith<$Res>? get callInfo {
    if (_self.callInfo == null) {
      return null;
    }

    return $CallInfoCopyWith<$Res>(_self.callInfo!, (value) {
      return _then(_self.copyWith(callInfo: value));
    });
  }
}

/// @nodoc
mixin _$CallInfo {
  String get roomName;
  List<CallParticipant>? get callingParticipants;

  /// Create a copy of CallInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallInfoCopyWith<CallInfo> get copyWith =>
      _$CallInfoCopyWithImpl<CallInfo>(this as CallInfo, _$identity);

  /// Serializes this CallInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallInfo &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            const DeepCollectionEquality()
                .equals(other.callingParticipants, callingParticipants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomName,
      const DeepCollectionEquality().hash(callingParticipants));

  @override
  String toString() {
    return 'CallInfo(roomName: $roomName, callingParticipants: $callingParticipants)';
  }
}

/// @nodoc
abstract mixin class $CallInfoCopyWith<$Res> {
  factory $CallInfoCopyWith(CallInfo value, $Res Function(CallInfo) _then) =
      _$CallInfoCopyWithImpl;
  @useResult
  $Res call({String roomName, List<CallParticipant>? callingParticipants});
}

/// @nodoc
class _$CallInfoCopyWithImpl<$Res> implements $CallInfoCopyWith<$Res> {
  _$CallInfoCopyWithImpl(this._self, this._then);

  final CallInfo _self;
  final $Res Function(CallInfo) _then;

  /// Create a copy of CallInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomName = null,
    Object? callingParticipants = freezed,
  }) {
    return _then(_self.copyWith(
      roomName: null == roomName
          ? _self.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      callingParticipants: freezed == callingParticipants
          ? _self.callingParticipants
          : callingParticipants // ignore: cast_nullable_to_non_nullable
              as List<CallParticipant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CallInfo implements CallInfo {
  const _CallInfo(
      {required this.roomName,
      final List<CallParticipant>? callingParticipants})
      : _callingParticipants = callingParticipants;
  factory _CallInfo.fromJson(Map<String, dynamic> json) =>
      _$CallInfoFromJson(json);

  @override
  final String roomName;
  final List<CallParticipant>? _callingParticipants;
  @override
  List<CallParticipant>? get callingParticipants {
    final value = _callingParticipants;
    if (value == null) return null;
    if (_callingParticipants is EqualUnmodifiableListView)
      return _callingParticipants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CallInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallInfoCopyWith<_CallInfo> get copyWith =>
      __$CallInfoCopyWithImpl<_CallInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CallInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallInfo &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            const DeepCollectionEquality()
                .equals(other._callingParticipants, _callingParticipants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roomName,
      const DeepCollectionEquality().hash(_callingParticipants));

  @override
  String toString() {
    return 'CallInfo(roomName: $roomName, callingParticipants: $callingParticipants)';
  }
}

/// @nodoc
abstract mixin class _$CallInfoCopyWith<$Res>
    implements $CallInfoCopyWith<$Res> {
  factory _$CallInfoCopyWith(_CallInfo value, $Res Function(_CallInfo) _then) =
      __$CallInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String roomName, List<CallParticipant>? callingParticipants});
}

/// @nodoc
class __$CallInfoCopyWithImpl<$Res> implements _$CallInfoCopyWith<$Res> {
  __$CallInfoCopyWithImpl(this._self, this._then);

  final _CallInfo _self;
  final $Res Function(_CallInfo) _then;

  /// Create a copy of CallInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roomName = null,
    Object? callingParticipants = freezed,
  }) {
    return _then(_CallInfo(
      roomName: null == roomName
          ? _self.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      callingParticipants: freezed == callingParticipants
          ? _self._callingParticipants
          : callingParticipants // ignore: cast_nullable_to_non_nullable
              as List<CallParticipant>?,
    ));
  }
}

/// @nodoc
mixin _$CallParticipant {
  String get uid;
  String get name;

  /// Create a copy of CallParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallParticipantCopyWith<CallParticipant> get copyWith =>
      _$CallParticipantCopyWithImpl<CallParticipant>(
          this as CallParticipant, _$identity);

  /// Serializes this CallParticipant to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallParticipant &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name);

  @override
  String toString() {
    return 'CallParticipant(uid: $uid, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CallParticipantCopyWith<$Res> {
  factory $CallParticipantCopyWith(
          CallParticipant value, $Res Function(CallParticipant) _then) =
      _$CallParticipantCopyWithImpl;
  @useResult
  $Res call({String uid, String name});
}

/// @nodoc
class _$CallParticipantCopyWithImpl<$Res>
    implements $CallParticipantCopyWith<$Res> {
  _$CallParticipantCopyWithImpl(this._self, this._then);

  final CallParticipant _self;
  final $Res Function(CallParticipant) _then;

  /// Create a copy of CallParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CallParticipant implements CallParticipant {
  const _CallParticipant({required this.uid, required this.name});
  factory _CallParticipant.fromJson(Map<String, dynamic> json) =>
      _$CallParticipantFromJson(json);

  @override
  final String uid;
  @override
  final String name;

  /// Create a copy of CallParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallParticipantCopyWith<_CallParticipant> get copyWith =>
      __$CallParticipantCopyWithImpl<_CallParticipant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CallParticipantToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallParticipant &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name);

  @override
  String toString() {
    return 'CallParticipant(uid: $uid, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CallParticipantCopyWith<$Res>
    implements $CallParticipantCopyWith<$Res> {
  factory _$CallParticipantCopyWith(
          _CallParticipant value, $Res Function(_CallParticipant) _then) =
      __$CallParticipantCopyWithImpl;
  @override
  @useResult
  $Res call({String uid, String name});
}

/// @nodoc
class __$CallParticipantCopyWithImpl<$Res>
    implements _$CallParticipantCopyWith<$Res> {
  __$CallParticipantCopyWithImpl(this._self, this._then);

  final _CallParticipant _self;
  final $Res Function(_CallParticipant) _then;

  /// Create a copy of CallParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? name = null,
  }) {
    return _then(_CallParticipant(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

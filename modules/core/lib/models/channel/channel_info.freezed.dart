// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChannelBaseEntity _$ChannelBaseEntityFromJson(Map<String, dynamic> json) {
  return _ChannelIDEntity.fromJson(json);
}

/// @nodoc
mixin _$ChannelBaseEntity {
  String get channelId;
  int get channelType;

  /// Create a copy of ChannelBaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelBaseEntityCopyWith<ChannelBaseEntity> get copyWith =>
      _$ChannelBaseEntityCopyWithImpl<ChannelBaseEntity>(
          this as ChannelBaseEntity, _$identity);

  /// Serializes this ChannelBaseEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelBaseEntity &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, channelType);

  @override
  String toString() {
    return 'ChannelBaseEntity(channelId: $channelId, channelType: $channelType)';
  }
}

/// @nodoc
abstract mixin class $ChannelBaseEntityCopyWith<$Res> {
  factory $ChannelBaseEntityCopyWith(
          ChannelBaseEntity value, $Res Function(ChannelBaseEntity) _then) =
      _$ChannelBaseEntityCopyWithImpl;
  @useResult
  $Res call({String channelId, int channelType});
}

/// @nodoc
class _$ChannelBaseEntityCopyWithImpl<$Res>
    implements $ChannelBaseEntityCopyWith<$Res> {
  _$ChannelBaseEntityCopyWithImpl(this._self, this._then);

  final ChannelBaseEntity _self;
  final $Res Function(ChannelBaseEntity) _then;

  /// Create a copy of ChannelBaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? channelType = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChannelIDEntity implements ChannelBaseEntity {
  const _ChannelIDEntity({required this.channelId, this.channelType = 0});
  factory _ChannelIDEntity.fromJson(Map<String, dynamic> json) =>
      _$ChannelIDEntityFromJson(json);

  @override
  final String channelId;
  @override
  @JsonKey()
  final int channelType;

  /// Create a copy of ChannelBaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelIDEntityCopyWith<_ChannelIDEntity> get copyWith =>
      __$ChannelIDEntityCopyWithImpl<_ChannelIDEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelIDEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelIDEntity &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, channelType);

  @override
  String toString() {
    return 'ChannelBaseEntity(channelId: $channelId, channelType: $channelType)';
  }
}

/// @nodoc
abstract mixin class _$ChannelIDEntityCopyWith<$Res>
    implements $ChannelBaseEntityCopyWith<$Res> {
  factory _$ChannelIDEntityCopyWith(
          _ChannelIDEntity value, $Res Function(_ChannelIDEntity) _then) =
      __$ChannelIDEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String channelId, int channelType});
}

/// @nodoc
class __$ChannelIDEntityCopyWithImpl<$Res>
    implements _$ChannelIDEntityCopyWith<$Res> {
  __$ChannelIDEntityCopyWithImpl(this._self, this._then);

  final _ChannelIDEntity _self;
  final $Res Function(_ChannelIDEntity) _then;

  /// Create a copy of ChannelBaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channelId = null,
    Object? channelType = null,
  }) {
    return _then(_ChannelIDEntity(
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _self.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ChannelInfo {
  ChannelBaseEntity get channel;
  ChannelBaseEntity? get parentChannel;
  String get name;
  String get logo;
  String get remark;
  int get status;
  int get online;
  int get lastOffline;
  int get receipt;
  int get robot;
  dynamic get category;
  int get stick;
  int get mute;
  int get showNick;
  int get follow;
  int get beDeleted;
  int get beBlacklist;
  dynamic get notice;
  int get groupType;
  int get save;
  int get forbidden;
  int get invite;
  int get flame;
  int get flameSecond;
  int get deviceFlag;
  Map get extra;

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelInfoCopyWith<ChannelInfo> get copyWith =>
      _$ChannelInfoCopyWithImpl<ChannelInfo>(this as ChannelInfo, _$identity);

  /// Serializes this ChannelInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelInfo &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.parentChannel, parentChannel) ||
                other.parentChannel == parentChannel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            (identical(other.stick, stick) || other.stick == stick) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.showNick, showNick) ||
                other.showNick == showNick) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            const DeepCollectionEquality().equals(other.notice, notice) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.forbidden, forbidden) ||
                other.forbidden == forbidden) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.deviceFlag, deviceFlag) ||
                other.deviceFlag == deviceFlag) &&
            const DeepCollectionEquality().equals(other.extra, extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        channel,
        parentChannel,
        name,
        logo,
        remark,
        status,
        online,
        lastOffline,
        receipt,
        robot,
        const DeepCollectionEquality().hash(category),
        stick,
        mute,
        showNick,
        follow,
        beDeleted,
        beBlacklist,
        const DeepCollectionEquality().hash(notice),
        groupType,
        save,
        forbidden,
        invite,
        flame,
        flameSecond,
        deviceFlag,
        const DeepCollectionEquality().hash(extra)
      ]);

  @override
  String toString() {
    return 'ChannelInfo(channel: $channel, parentChannel: $parentChannel, name: $name, logo: $logo, remark: $remark, status: $status, online: $online, lastOffline: $lastOffline, receipt: $receipt, robot: $robot, category: $category, stick: $stick, mute: $mute, showNick: $showNick, follow: $follow, beDeleted: $beDeleted, beBlacklist: $beBlacklist, notice: $notice, groupType: $groupType, save: $save, forbidden: $forbidden, invite: $invite, flame: $flame, flameSecond: $flameSecond, deviceFlag: $deviceFlag, extra: $extra)';
  }
}

/// @nodoc
abstract mixin class $ChannelInfoCopyWith<$Res> {
  factory $ChannelInfoCopyWith(
          ChannelInfo value, $Res Function(ChannelInfo) _then) =
      _$ChannelInfoCopyWithImpl;
  @useResult
  $Res call(
      {ChannelBaseEntity channel,
      ChannelBaseEntity? parentChannel,
      String name,
      String logo,
      String remark,
      int status,
      int online,
      int lastOffline,
      int receipt,
      int robot,
      dynamic category,
      int stick,
      int mute,
      int showNick,
      int follow,
      int beDeleted,
      int beBlacklist,
      dynamic notice,
      int groupType,
      int save,
      int forbidden,
      int invite,
      int flame,
      int flameSecond,
      int deviceFlag,
      Map extra});

  $ChannelBaseEntityCopyWith<$Res> get channel;
  $ChannelBaseEntityCopyWith<$Res>? get parentChannel;
}

/// @nodoc
class _$ChannelInfoCopyWithImpl<$Res> implements $ChannelInfoCopyWith<$Res> {
  _$ChannelInfoCopyWithImpl(this._self, this._then);

  final ChannelInfo _self;
  final $Res Function(ChannelInfo) _then;

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? parentChannel = freezed,
    Object? name = null,
    Object? logo = null,
    Object? remark = null,
    Object? status = null,
    Object? online = null,
    Object? lastOffline = null,
    Object? receipt = null,
    Object? robot = null,
    Object? category = freezed,
    Object? stick = null,
    Object? mute = null,
    Object? showNick = null,
    Object? follow = null,
    Object? beDeleted = null,
    Object? beBlacklist = null,
    Object? notice = freezed,
    Object? groupType = null,
    Object? save = null,
    Object? forbidden = null,
    Object? invite = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? deviceFlag = null,
    Object? extra = null,
  }) {
    return _then(_self.copyWith(
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelBaseEntity,
      parentChannel: freezed == parentChannel
          ? _self.parentChannel
          : parentChannel // ignore: cast_nullable_to_non_nullable
              as ChannelBaseEntity?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stick: null == stick
          ? _self.stick
          : stick // ignore: cast_nullable_to_non_nullable
              as int,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      showNick: null == showNick
          ? _self.showNick
          : showNick // ignore: cast_nullable_to_non_nullable
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
      notice: freezed == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      groupType: null == groupType
          ? _self.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as int,
      save: null == save
          ? _self.save
          : save // ignore: cast_nullable_to_non_nullable
              as int,
      forbidden: null == forbidden
          ? _self.forbidden
          : forbidden // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _self.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      deviceFlag: null == deviceFlag
          ? _self.deviceFlag
          : deviceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      extra: null == extra
          ? _self.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map,
    ));
  }

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelBaseEntityCopyWith<$Res> get channel {
    return $ChannelBaseEntityCopyWith<$Res>(_self.channel, (value) {
      return _then(_self.copyWith(channel: value));
    });
  }

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelBaseEntityCopyWith<$Res>? get parentChannel {
    if (_self.parentChannel == null) {
      return null;
    }

    return $ChannelBaseEntityCopyWith<$Res>(_self.parentChannel!, (value) {
      return _then(_self.copyWith(parentChannel: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChannelInfo implements ChannelInfo {
  const _ChannelInfo(
      {required this.channel,
      this.parentChannel,
      this.name = "",
      this.logo = "",
      this.remark = "",
      this.status = 0,
      this.online = 0,
      this.lastOffline = 0,
      this.receipt = 0,
      this.robot = 0,
      this.category = "",
      this.stick = 0,
      this.mute = 0,
      this.showNick = 0,
      this.follow = 0,
      this.beDeleted = 0,
      this.beBlacklist = 0,
      this.notice = "",
      this.groupType = 0,
      this.save = 0,
      this.forbidden = 0,
      this.invite = 0,
      this.flame = 0,
      this.flameSecond = 0,
      this.deviceFlag = 0,
      required final Map extra})
      : _extra = extra;
  factory _ChannelInfo.fromJson(Map<String, dynamic> json) =>
      _$ChannelInfoFromJson(json);

  @override
  final ChannelBaseEntity channel;
  @override
  final ChannelBaseEntity? parentChannel;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String logo;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final int online;
  @override
  @JsonKey()
  final int lastOffline;
  @override
  @JsonKey()
  final int receipt;
  @override
  @JsonKey()
  final int robot;
  @override
  @JsonKey()
  final dynamic category;
  @override
  @JsonKey()
  final int stick;
  @override
  @JsonKey()
  final int mute;
  @override
  @JsonKey()
  final int showNick;
  @override
  @JsonKey()
  final int follow;
  @override
  @JsonKey()
  final int beDeleted;
  @override
  @JsonKey()
  final int beBlacklist;
  @override
  @JsonKey()
  final dynamic notice;
  @override
  @JsonKey()
  final int groupType;
  @override
  @JsonKey()
  final int save;
  @override
  @JsonKey()
  final int forbidden;
  @override
  @JsonKey()
  final int invite;
  @override
  @JsonKey()
  final int flame;
  @override
  @JsonKey()
  final int flameSecond;
  @override
  @JsonKey()
  final int deviceFlag;
  final Map _extra;
  @override
  Map get extra {
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extra);
  }

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelInfoCopyWith<_ChannelInfo> get copyWith =>
      __$ChannelInfoCopyWithImpl<_ChannelInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelInfo &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.parentChannel, parentChannel) ||
                other.parentChannel == parentChannel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            (identical(other.stick, stick) || other.stick == stick) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.showNick, showNick) ||
                other.showNick == showNick) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            const DeepCollectionEquality().equals(other.notice, notice) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.save, save) || other.save == save) &&
            (identical(other.forbidden, forbidden) ||
                other.forbidden == forbidden) &&
            (identical(other.invite, invite) || other.invite == invite) &&
            (identical(other.flame, flame) || other.flame == flame) &&
            (identical(other.flameSecond, flameSecond) ||
                other.flameSecond == flameSecond) &&
            (identical(other.deviceFlag, deviceFlag) ||
                other.deviceFlag == deviceFlag) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        channel,
        parentChannel,
        name,
        logo,
        remark,
        status,
        online,
        lastOffline,
        receipt,
        robot,
        const DeepCollectionEquality().hash(category),
        stick,
        mute,
        showNick,
        follow,
        beDeleted,
        beBlacklist,
        const DeepCollectionEquality().hash(notice),
        groupType,
        save,
        forbidden,
        invite,
        flame,
        flameSecond,
        deviceFlag,
        const DeepCollectionEquality().hash(_extra)
      ]);

  @override
  String toString() {
    return 'ChannelInfo(channel: $channel, parentChannel: $parentChannel, name: $name, logo: $logo, remark: $remark, status: $status, online: $online, lastOffline: $lastOffline, receipt: $receipt, robot: $robot, category: $category, stick: $stick, mute: $mute, showNick: $showNick, follow: $follow, beDeleted: $beDeleted, beBlacklist: $beBlacklist, notice: $notice, groupType: $groupType, save: $save, forbidden: $forbidden, invite: $invite, flame: $flame, flameSecond: $flameSecond, deviceFlag: $deviceFlag, extra: $extra)';
  }
}

/// @nodoc
abstract mixin class _$ChannelInfoCopyWith<$Res>
    implements $ChannelInfoCopyWith<$Res> {
  factory _$ChannelInfoCopyWith(
          _ChannelInfo value, $Res Function(_ChannelInfo) _then) =
      __$ChannelInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ChannelBaseEntity channel,
      ChannelBaseEntity? parentChannel,
      String name,
      String logo,
      String remark,
      int status,
      int online,
      int lastOffline,
      int receipt,
      int robot,
      dynamic category,
      int stick,
      int mute,
      int showNick,
      int follow,
      int beDeleted,
      int beBlacklist,
      dynamic notice,
      int groupType,
      int save,
      int forbidden,
      int invite,
      int flame,
      int flameSecond,
      int deviceFlag,
      Map extra});

  @override
  $ChannelBaseEntityCopyWith<$Res> get channel;
  @override
  $ChannelBaseEntityCopyWith<$Res>? get parentChannel;
}

/// @nodoc
class __$ChannelInfoCopyWithImpl<$Res> implements _$ChannelInfoCopyWith<$Res> {
  __$ChannelInfoCopyWithImpl(this._self, this._then);

  final _ChannelInfo _self;
  final $Res Function(_ChannelInfo) _then;

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channel = null,
    Object? parentChannel = freezed,
    Object? name = null,
    Object? logo = null,
    Object? remark = null,
    Object? status = null,
    Object? online = null,
    Object? lastOffline = null,
    Object? receipt = null,
    Object? robot = null,
    Object? category = freezed,
    Object? stick = null,
    Object? mute = null,
    Object? showNick = null,
    Object? follow = null,
    Object? beDeleted = null,
    Object? beBlacklist = null,
    Object? notice = freezed,
    Object? groupType = null,
    Object? save = null,
    Object? forbidden = null,
    Object? invite = null,
    Object? flame = null,
    Object? flameSecond = null,
    Object? deviceFlag = null,
    Object? extra = null,
  }) {
    return _then(_ChannelInfo(
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelBaseEntity,
      parentChannel: freezed == parentChannel
          ? _self.parentChannel
          : parentChannel // ignore: cast_nullable_to_non_nullable
              as ChannelBaseEntity?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stick: null == stick
          ? _self.stick
          : stick // ignore: cast_nullable_to_non_nullable
              as int,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      showNick: null == showNick
          ? _self.showNick
          : showNick // ignore: cast_nullable_to_non_nullable
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
      notice: freezed == notice
          ? _self.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      groupType: null == groupType
          ? _self.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as int,
      save: null == save
          ? _self.save
          : save // ignore: cast_nullable_to_non_nullable
              as int,
      forbidden: null == forbidden
          ? _self.forbidden
          : forbidden // ignore: cast_nullable_to_non_nullable
              as int,
      invite: null == invite
          ? _self.invite
          : invite // ignore: cast_nullable_to_non_nullable
              as int,
      flame: null == flame
          ? _self.flame
          : flame // ignore: cast_nullable_to_non_nullable
              as int,
      flameSecond: null == flameSecond
          ? _self.flameSecond
          : flameSecond // ignore: cast_nullable_to_non_nullable
              as int,
      deviceFlag: null == deviceFlag
          ? _self.deviceFlag
          : deviceFlag // ignore: cast_nullable_to_non_nullable
              as int,
      extra: null == extra
          ? _self._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map,
    ));
  }

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelBaseEntityCopyWith<$Res> get channel {
    return $ChannelBaseEntityCopyWith<$Res>(_self.channel, (value) {
      return _then(_self.copyWith(channel: value));
    });
  }

  /// Create a copy of ChannelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelBaseEntityCopyWith<$Res>? get parentChannel {
    if (_self.parentChannel == null) {
      return null;
    }

    return $ChannelBaseEntityCopyWith<$Res>(_self.parentChannel!, (value) {
      return _then(_self.copyWith(parentChannel: value));
    });
  }
}

// dart format on

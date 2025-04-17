// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCert {
  String get uid;
  String get appId;
  String get token;
  String get username;
  String get name;
  int get sex;
  String get category;
  String get shortNo;
  int get shortStatus;
  String get zone;
  String get phone;
  String get chatPwd;
  String get lockScreenPwd;
  int get lockAfterMinute;
  UserSetting get setting;

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCertCopyWith<UserCert> get copyWith =>
      _$UserCertCopyWithImpl<UserCert>(this as UserCert, _$identity);

  /// Serializes this UserCert to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserCert &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.shortStatus, shortStatus) ||
                other.shortStatus == shortStatus) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.chatPwd, chatPwd) || other.chatPwd == chatPwd) &&
            (identical(other.lockScreenPwd, lockScreenPwd) ||
                other.lockScreenPwd == lockScreenPwd) &&
            (identical(other.lockAfterMinute, lockAfterMinute) ||
                other.lockAfterMinute == lockAfterMinute) &&
            (identical(other.setting, setting) || other.setting == setting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      appId,
      token,
      username,
      name,
      sex,
      category,
      shortNo,
      shortStatus,
      zone,
      phone,
      chatPwd,
      lockScreenPwd,
      lockAfterMinute,
      setting);

  @override
  String toString() {
    return 'UserCert(uid: $uid, appId: $appId, token: $token, username: $username, name: $name, sex: $sex, category: $category, shortNo: $shortNo, shortStatus: $shortStatus, zone: $zone, phone: $phone, chatPwd: $chatPwd, lockScreenPwd: $lockScreenPwd, lockAfterMinute: $lockAfterMinute, setting: $setting)';
  }
}

/// @nodoc
abstract mixin class $UserCertCopyWith<$Res> {
  factory $UserCertCopyWith(UserCert value, $Res Function(UserCert) _then) =
      _$UserCertCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String appId,
      String token,
      String username,
      String name,
      int sex,
      String category,
      String shortNo,
      int shortStatus,
      String zone,
      String phone,
      String chatPwd,
      String lockScreenPwd,
      int lockAfterMinute,
      UserSetting setting});

  $UserSettingCopyWith<$Res> get setting;
}

/// @nodoc
class _$UserCertCopyWithImpl<$Res> implements $UserCertCopyWith<$Res> {
  _$UserCertCopyWithImpl(this._self, this._then);

  final UserCert _self;
  final $Res Function(UserCert) _then;

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? appId = null,
    Object? token = null,
    Object? username = null,
    Object? name = null,
    Object? sex = null,
    Object? category = null,
    Object? shortNo = null,
    Object? shortStatus = null,
    Object? zone = null,
    Object? phone = null,
    Object? chatPwd = null,
    Object? lockScreenPwd = null,
    Object? lockAfterMinute = null,
    Object? setting = null,
  }) {
    return _then(_self.copyWith(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _self.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
      shortStatus: null == shortStatus
          ? _self.shortStatus
          : shortStatus // ignore: cast_nullable_to_non_nullable
              as int,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      chatPwd: null == chatPwd
          ? _self.chatPwd
          : chatPwd // ignore: cast_nullable_to_non_nullable
              as String,
      lockScreenPwd: null == lockScreenPwd
          ? _self.lockScreenPwd
          : lockScreenPwd // ignore: cast_nullable_to_non_nullable
              as String,
      lockAfterMinute: null == lockAfterMinute
          ? _self.lockAfterMinute
          : lockAfterMinute // ignore: cast_nullable_to_non_nullable
              as int,
      setting: null == setting
          ? _self.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as UserSetting,
    ));
  }

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserSettingCopyWith<$Res> get setting {
    return $UserSettingCopyWith<$Res>(_self.setting, (value) {
      return _then(_self.copyWith(setting: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserCert implements UserCert {
  const _UserCert(
      {required this.uid,
      required this.appId,
      required this.token,
      required this.username,
      required this.name,
      required this.sex,
      required this.category,
      required this.shortNo,
      required this.shortStatus,
      required this.zone,
      required this.phone,
      required this.chatPwd,
      required this.lockScreenPwd,
      required this.lockAfterMinute,
      required this.setting});
  factory _UserCert.fromJson(Map<String, dynamic> json) =>
      _$UserCertFromJson(json);

  @override
  final String uid;
  @override
  final String appId;
  @override
  final String token;
  @override
  final String username;
  @override
  final String name;
  @override
  final int sex;
  @override
  final String category;
  @override
  final String shortNo;
  @override
  final int shortStatus;
  @override
  final String zone;
  @override
  final String phone;
  @override
  final String chatPwd;
  @override
  final String lockScreenPwd;
  @override
  final int lockAfterMinute;
  @override
  final UserSetting setting;

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCertCopyWith<_UserCert> get copyWith =>
      __$UserCertCopyWithImpl<_UserCert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserCertToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCert &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.shortStatus, shortStatus) ||
                other.shortStatus == shortStatus) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.chatPwd, chatPwd) || other.chatPwd == chatPwd) &&
            (identical(other.lockScreenPwd, lockScreenPwd) ||
                other.lockScreenPwd == lockScreenPwd) &&
            (identical(other.lockAfterMinute, lockAfterMinute) ||
                other.lockAfterMinute == lockAfterMinute) &&
            (identical(other.setting, setting) || other.setting == setting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      appId,
      token,
      username,
      name,
      sex,
      category,
      shortNo,
      shortStatus,
      zone,
      phone,
      chatPwd,
      lockScreenPwd,
      lockAfterMinute,
      setting);

  @override
  String toString() {
    return 'UserCert(uid: $uid, appId: $appId, token: $token, username: $username, name: $name, sex: $sex, category: $category, shortNo: $shortNo, shortStatus: $shortStatus, zone: $zone, phone: $phone, chatPwd: $chatPwd, lockScreenPwd: $lockScreenPwd, lockAfterMinute: $lockAfterMinute, setting: $setting)';
  }
}

/// @nodoc
abstract mixin class _$UserCertCopyWith<$Res>
    implements $UserCertCopyWith<$Res> {
  factory _$UserCertCopyWith(_UserCert value, $Res Function(_UserCert) _then) =
      __$UserCertCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String appId,
      String token,
      String username,
      String name,
      int sex,
      String category,
      String shortNo,
      int shortStatus,
      String zone,
      String phone,
      String chatPwd,
      String lockScreenPwd,
      int lockAfterMinute,
      UserSetting setting});

  @override
  $UserSettingCopyWith<$Res> get setting;
}

/// @nodoc
class __$UserCertCopyWithImpl<$Res> implements _$UserCertCopyWith<$Res> {
  __$UserCertCopyWithImpl(this._self, this._then);

  final _UserCert _self;
  final $Res Function(_UserCert) _then;

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? appId = null,
    Object? token = null,
    Object? username = null,
    Object? name = null,
    Object? sex = null,
    Object? category = null,
    Object? shortNo = null,
    Object? shortStatus = null,
    Object? zone = null,
    Object? phone = null,
    Object? chatPwd = null,
    Object? lockScreenPwd = null,
    Object? lockAfterMinute = null,
    Object? setting = null,
  }) {
    return _then(_UserCert(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      appId: null == appId
          ? _self.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
      shortStatus: null == shortStatus
          ? _self.shortStatus
          : shortStatus // ignore: cast_nullable_to_non_nullable
              as int,
      zone: null == zone
          ? _self.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      chatPwd: null == chatPwd
          ? _self.chatPwd
          : chatPwd // ignore: cast_nullable_to_non_nullable
              as String,
      lockScreenPwd: null == lockScreenPwd
          ? _self.lockScreenPwd
          : lockScreenPwd // ignore: cast_nullable_to_non_nullable
              as String,
      lockAfterMinute: null == lockAfterMinute
          ? _self.lockAfterMinute
          : lockAfterMinute // ignore: cast_nullable_to_non_nullable
              as int,
      setting: null == setting
          ? _self.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as UserSetting,
    ));
  }

  /// Create a copy of UserCert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserSettingCopyWith<$Res> get setting {
    return $UserSettingCopyWith<$Res>(_self.setting, (value) {
      return _then(_self.copyWith(setting: value));
    });
  }
}

/// @nodoc
mixin _$UserSetting {
  int get searchByPhone;
  int get searchByShort;
  int get newMsgNotice;
  int get msgShowDetail;
  int get voiceOn;
  int get shockOn;
  int get deviceLock;
  int get offlineProtection;
  int get muteOfApp;

  /// Create a copy of UserSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSettingCopyWith<UserSetting> get copyWith =>
      _$UserSettingCopyWithImpl<UserSetting>(this as UserSetting, _$identity);

  /// Serializes this UserSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSetting &&
            (identical(other.searchByPhone, searchByPhone) ||
                other.searchByPhone == searchByPhone) &&
            (identical(other.searchByShort, searchByShort) ||
                other.searchByShort == searchByShort) &&
            (identical(other.newMsgNotice, newMsgNotice) ||
                other.newMsgNotice == newMsgNotice) &&
            (identical(other.msgShowDetail, msgShowDetail) ||
                other.msgShowDetail == msgShowDetail) &&
            (identical(other.voiceOn, voiceOn) || other.voiceOn == voiceOn) &&
            (identical(other.shockOn, shockOn) || other.shockOn == shockOn) &&
            (identical(other.deviceLock, deviceLock) ||
                other.deviceLock == deviceLock) &&
            (identical(other.offlineProtection, offlineProtection) ||
                other.offlineProtection == offlineProtection) &&
            (identical(other.muteOfApp, muteOfApp) ||
                other.muteOfApp == muteOfApp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchByPhone,
      searchByShort,
      newMsgNotice,
      msgShowDetail,
      voiceOn,
      shockOn,
      deviceLock,
      offlineProtection,
      muteOfApp);

  @override
  String toString() {
    return 'UserSetting(searchByPhone: $searchByPhone, searchByShort: $searchByShort, newMsgNotice: $newMsgNotice, msgShowDetail: $msgShowDetail, voiceOn: $voiceOn, shockOn: $shockOn, deviceLock: $deviceLock, offlineProtection: $offlineProtection, muteOfApp: $muteOfApp)';
  }
}

/// @nodoc
abstract mixin class $UserSettingCopyWith<$Res> {
  factory $UserSettingCopyWith(
          UserSetting value, $Res Function(UserSetting) _then) =
      _$UserSettingCopyWithImpl;
  @useResult
  $Res call(
      {int searchByPhone,
      int searchByShort,
      int newMsgNotice,
      int msgShowDetail,
      int voiceOn,
      int shockOn,
      int deviceLock,
      int offlineProtection,
      int muteOfApp});
}

/// @nodoc
class _$UserSettingCopyWithImpl<$Res> implements $UserSettingCopyWith<$Res> {
  _$UserSettingCopyWithImpl(this._self, this._then);

  final UserSetting _self;
  final $Res Function(UserSetting) _then;

  /// Create a copy of UserSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchByPhone = null,
    Object? searchByShort = null,
    Object? newMsgNotice = null,
    Object? msgShowDetail = null,
    Object? voiceOn = null,
    Object? shockOn = null,
    Object? deviceLock = null,
    Object? offlineProtection = null,
    Object? muteOfApp = null,
  }) {
    return _then(_self.copyWith(
      searchByPhone: null == searchByPhone
          ? _self.searchByPhone
          : searchByPhone // ignore: cast_nullable_to_non_nullable
              as int,
      searchByShort: null == searchByShort
          ? _self.searchByShort
          : searchByShort // ignore: cast_nullable_to_non_nullable
              as int,
      newMsgNotice: null == newMsgNotice
          ? _self.newMsgNotice
          : newMsgNotice // ignore: cast_nullable_to_non_nullable
              as int,
      msgShowDetail: null == msgShowDetail
          ? _self.msgShowDetail
          : msgShowDetail // ignore: cast_nullable_to_non_nullable
              as int,
      voiceOn: null == voiceOn
          ? _self.voiceOn
          : voiceOn // ignore: cast_nullable_to_non_nullable
              as int,
      shockOn: null == shockOn
          ? _self.shockOn
          : shockOn // ignore: cast_nullable_to_non_nullable
              as int,
      deviceLock: null == deviceLock
          ? _self.deviceLock
          : deviceLock // ignore: cast_nullable_to_non_nullable
              as int,
      offlineProtection: null == offlineProtection
          ? _self.offlineProtection
          : offlineProtection // ignore: cast_nullable_to_non_nullable
              as int,
      muteOfApp: null == muteOfApp
          ? _self.muteOfApp
          : muteOfApp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserSetting implements UserSetting {
  const _UserSetting(
      {required this.searchByPhone,
      required this.searchByShort,
      required this.newMsgNotice,
      required this.msgShowDetail,
      required this.voiceOn,
      required this.shockOn,
      required this.deviceLock,
      required this.offlineProtection,
      required this.muteOfApp});
  factory _UserSetting.fromJson(Map<String, dynamic> json) =>
      _$UserSettingFromJson(json);

  @override
  final int searchByPhone;
  @override
  final int searchByShort;
  @override
  final int newMsgNotice;
  @override
  final int msgShowDetail;
  @override
  final int voiceOn;
  @override
  final int shockOn;
  @override
  final int deviceLock;
  @override
  final int offlineProtection;
  @override
  final int muteOfApp;

  /// Create a copy of UserSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserSettingCopyWith<_UserSetting> get copyWith =>
      __$UserSettingCopyWithImpl<_UserSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSetting &&
            (identical(other.searchByPhone, searchByPhone) ||
                other.searchByPhone == searchByPhone) &&
            (identical(other.searchByShort, searchByShort) ||
                other.searchByShort == searchByShort) &&
            (identical(other.newMsgNotice, newMsgNotice) ||
                other.newMsgNotice == newMsgNotice) &&
            (identical(other.msgShowDetail, msgShowDetail) ||
                other.msgShowDetail == msgShowDetail) &&
            (identical(other.voiceOn, voiceOn) || other.voiceOn == voiceOn) &&
            (identical(other.shockOn, shockOn) || other.shockOn == shockOn) &&
            (identical(other.deviceLock, deviceLock) ||
                other.deviceLock == deviceLock) &&
            (identical(other.offlineProtection, offlineProtection) ||
                other.offlineProtection == offlineProtection) &&
            (identical(other.muteOfApp, muteOfApp) ||
                other.muteOfApp == muteOfApp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchByPhone,
      searchByShort,
      newMsgNotice,
      msgShowDetail,
      voiceOn,
      shockOn,
      deviceLock,
      offlineProtection,
      muteOfApp);

  @override
  String toString() {
    return 'UserSetting(searchByPhone: $searchByPhone, searchByShort: $searchByShort, newMsgNotice: $newMsgNotice, msgShowDetail: $msgShowDetail, voiceOn: $voiceOn, shockOn: $shockOn, deviceLock: $deviceLock, offlineProtection: $offlineProtection, muteOfApp: $muteOfApp)';
  }
}

/// @nodoc
abstract mixin class _$UserSettingCopyWith<$Res>
    implements $UserSettingCopyWith<$Res> {
  factory _$UserSettingCopyWith(
          _UserSetting value, $Res Function(_UserSetting) _then) =
      __$UserSettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int searchByPhone,
      int searchByShort,
      int newMsgNotice,
      int msgShowDetail,
      int voiceOn,
      int shockOn,
      int deviceLock,
      int offlineProtection,
      int muteOfApp});
}

/// @nodoc
class __$UserSettingCopyWithImpl<$Res> implements _$UserSettingCopyWith<$Res> {
  __$UserSettingCopyWithImpl(this._self, this._then);

  final _UserSetting _self;
  final $Res Function(_UserSetting) _then;

  /// Create a copy of UserSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchByPhone = null,
    Object? searchByShort = null,
    Object? newMsgNotice = null,
    Object? msgShowDetail = null,
    Object? voiceOn = null,
    Object? shockOn = null,
    Object? deviceLock = null,
    Object? offlineProtection = null,
    Object? muteOfApp = null,
  }) {
    return _then(_UserSetting(
      searchByPhone: null == searchByPhone
          ? _self.searchByPhone
          : searchByPhone // ignore: cast_nullable_to_non_nullable
              as int,
      searchByShort: null == searchByShort
          ? _self.searchByShort
          : searchByShort // ignore: cast_nullable_to_non_nullable
              as int,
      newMsgNotice: null == newMsgNotice
          ? _self.newMsgNotice
          : newMsgNotice // ignore: cast_nullable_to_non_nullable
              as int,
      msgShowDetail: null == msgShowDetail
          ? _self.msgShowDetail
          : msgShowDetail // ignore: cast_nullable_to_non_nullable
              as int,
      voiceOn: null == voiceOn
          ? _self.voiceOn
          : voiceOn // ignore: cast_nullable_to_non_nullable
              as int,
      shockOn: null == shockOn
          ? _self.shockOn
          : shockOn // ignore: cast_nullable_to_non_nullable
              as int,
      deviceLock: null == deviceLock
          ? _self.deviceLock
          : deviceLock // ignore: cast_nullable_to_non_nullable
              as int,
      offlineProtection: null == offlineProtection
          ? _self.offlineProtection
          : offlineProtection // ignore: cast_nullable_to_non_nullable
              as int,
      muteOfApp: null == muteOfApp
          ? _self.muteOfApp
          : muteOfApp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

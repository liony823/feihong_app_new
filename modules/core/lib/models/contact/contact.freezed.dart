// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Contact {
  String get uid; // 用户ID
  String get name; // 用户名
  int get mute; // 是否静音
  int get top; // 是否置顶
  int get sex; // 性别
  int get online; // 是否在线
  int get receipt; // 是否接收消息
  int get robot; // 是否机器人
  int get lastOffline; // 最后离线时间
  String get category; // 分类
  int get follow; // 关注数
  String get remark; // 备注
  int get chatPwdOn; // 是否开启聊天密码
  @ContactStatusConverter()
  ContactStatus get status; // 状态
  String get shortNo; // 短号
  String get sourceDesc; // 来源描述
  String get vercode; // 版本号
  int get screenshot; // 是否截图
  int get revokeRemind; // 是否撤回提醒
  int get beBlacklist; // 是否拉黑
  int get beDeleted; // 是否删除
  int get version;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactCopyWith<Contact> get copyWith =>
      _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Contact &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.sourceDesc, sourceDesc) ||
                other.sourceDesc == sourceDesc) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        name,
        mute,
        top,
        sex,
        online,
        receipt,
        robot,
        lastOffline,
        category,
        follow,
        remark,
        chatPwdOn,
        status,
        shortNo,
        sourceDesc,
        vercode,
        screenshot,
        revokeRemind,
        beBlacklist,
        beDeleted,
        version
      ]);

  @override
  String toString() {
    return 'Contact(uid: $uid, name: $name, mute: $mute, top: $top, sex: $sex, online: $online, receipt: $receipt, robot: $robot, lastOffline: $lastOffline, category: $category, follow: $follow, remark: $remark, chatPwdOn: $chatPwdOn, status: $status, shortNo: $shortNo, sourceDesc: $sourceDesc, vercode: $vercode, screenshot: $screenshot, revokeRemind: $revokeRemind, beBlacklist: $beBlacklist, beDeleted: $beDeleted, version: $version)';
  }
}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) =
      _$ContactCopyWithImpl;
  @useResult
  $Res call(
      {String uid,
      String name,
      int mute,
      int top,
      int sex,
      int online,
      int receipt,
      int robot,
      int lastOffline,
      String category,
      int follow,
      String remark,
      int chatPwdOn,
      @ContactStatusConverter() ContactStatus status,
      String shortNo,
      String sourceDesc,
      String vercode,
      int screenshot,
      int revokeRemind,
      int beBlacklist,
      int beDeleted,
      int version});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? mute = null,
    Object? top = null,
    Object? sex = null,
    Object? online = null,
    Object? receipt = null,
    Object? robot = null,
    Object? lastOffline = null,
    Object? category = null,
    Object? follow = null,
    Object? remark = null,
    Object? chatPwdOn = null,
    Object? status = null,
    Object? shortNo = null,
    Object? sourceDesc = null,
    Object? vercode = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? beBlacklist = null,
    Object? beDeleted = null,
    Object? version = null,
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
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      follow: null == follow
          ? _self.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      chatPwdOn: null == chatPwdOn
          ? _self.chatPwdOn
          : chatPwdOn // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactStatus,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDesc: null == sourceDesc
          ? _self.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      screenshot: null == screenshot
          ? _self.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as int,
      revokeRemind: null == revokeRemind
          ? _self.revokeRemind
          : revokeRemind // ignore: cast_nullable_to_non_nullable
              as int,
      beBlacklist: null == beBlacklist
          ? _self.beBlacklist
          : beBlacklist // ignore: cast_nullable_to_non_nullable
              as int,
      beDeleted: null == beDeleted
          ? _self.beDeleted
          : beDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Contact implements Contact {
  const _Contact(
      {this.uid = '',
      this.name = '',
      this.mute = 0,
      this.top = 0,
      this.sex = 0,
      this.online = 0,
      this.receipt = 0,
      this.robot = 0,
      this.lastOffline = 0,
      this.category = '',
      this.follow = 0,
      this.remark = '',
      this.chatPwdOn = 0,
      @ContactStatusConverter() this.status = ContactStatus.unknown,
      this.shortNo = '',
      this.sourceDesc = '',
      this.vercode = '',
      this.screenshot = 0,
      this.revokeRemind = 0,
      this.beBlacklist = 0,
      this.beDeleted = 0,
      this.version = 0});
  factory _Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  @override
  @JsonKey()
  final String uid;
// 用户ID
  @override
  @JsonKey()
  final String name;
// 用户名
  @override
  @JsonKey()
  final int mute;
// 是否静音
  @override
  @JsonKey()
  final int top;
// 是否置顶
  @override
  @JsonKey()
  final int sex;
// 性别
  @override
  @JsonKey()
  final int online;
// 是否在线
  @override
  @JsonKey()
  final int receipt;
// 是否接收消息
  @override
  @JsonKey()
  final int robot;
// 是否机器人
  @override
  @JsonKey()
  final int lastOffline;
// 最后离线时间
  @override
  @JsonKey()
  final String category;
// 分类
  @override
  @JsonKey()
  final int follow;
// 关注数
  @override
  @JsonKey()
  final String remark;
// 备注
  @override
  @JsonKey()
  final int chatPwdOn;
// 是否开启聊天密码
  @override
  @JsonKey()
  @ContactStatusConverter()
  final ContactStatus status;
// 状态
  @override
  @JsonKey()
  final String shortNo;
// 短号
  @override
  @JsonKey()
  final String sourceDesc;
// 来源描述
  @override
  @JsonKey()
  final String vercode;
// 版本号
  @override
  @JsonKey()
  final int screenshot;
// 是否截图
  @override
  @JsonKey()
  final int revokeRemind;
// 是否撤回提醒
  @override
  @JsonKey()
  final int beBlacklist;
// 是否拉黑
  @override
  @JsonKey()
  final int beDeleted;
// 是否删除
  @override
  @JsonKey()
  final int version;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Contact &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.robot, robot) || other.robot == robot) &&
            (identical(other.lastOffline, lastOffline) ||
                other.lastOffline == lastOffline) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.chatPwdOn, chatPwdOn) ||
                other.chatPwdOn == chatPwdOn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.shortNo, shortNo) || other.shortNo == shortNo) &&
            (identical(other.sourceDesc, sourceDesc) ||
                other.sourceDesc == sourceDesc) &&
            (identical(other.vercode, vercode) || other.vercode == vercode) &&
            (identical(other.screenshot, screenshot) ||
                other.screenshot == screenshot) &&
            (identical(other.revokeRemind, revokeRemind) ||
                other.revokeRemind == revokeRemind) &&
            (identical(other.beBlacklist, beBlacklist) ||
                other.beBlacklist == beBlacklist) &&
            (identical(other.beDeleted, beDeleted) ||
                other.beDeleted == beDeleted) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        name,
        mute,
        top,
        sex,
        online,
        receipt,
        robot,
        lastOffline,
        category,
        follow,
        remark,
        chatPwdOn,
        status,
        shortNo,
        sourceDesc,
        vercode,
        screenshot,
        revokeRemind,
        beBlacklist,
        beDeleted,
        version
      ]);

  @override
  String toString() {
    return 'Contact(uid: $uid, name: $name, mute: $mute, top: $top, sex: $sex, online: $online, receipt: $receipt, robot: $robot, lastOffline: $lastOffline, category: $category, follow: $follow, remark: $remark, chatPwdOn: $chatPwdOn, status: $status, shortNo: $shortNo, sourceDesc: $sourceDesc, vercode: $vercode, screenshot: $screenshot, revokeRemind: $revokeRemind, beBlacklist: $beBlacklist, beDeleted: $beDeleted, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) =
      __$ContactCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      int mute,
      int top,
      int sex,
      int online,
      int receipt,
      int robot,
      int lastOffline,
      String category,
      int follow,
      String remark,
      int chatPwdOn,
      @ContactStatusConverter() ContactStatus status,
      String shortNo,
      String sourceDesc,
      String vercode,
      int screenshot,
      int revokeRemind,
      int beBlacklist,
      int beDeleted,
      int version});
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? mute = null,
    Object? top = null,
    Object? sex = null,
    Object? online = null,
    Object? receipt = null,
    Object? robot = null,
    Object? lastOffline = null,
    Object? category = null,
    Object? follow = null,
    Object? remark = null,
    Object? chatPwdOn = null,
    Object? status = null,
    Object? shortNo = null,
    Object? sourceDesc = null,
    Object? vercode = null,
    Object? screenshot = null,
    Object? revokeRemind = null,
    Object? beBlacklist = null,
    Object? beDeleted = null,
    Object? version = null,
  }) {
    return _then(_Contact(
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _self.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      online: null == online
          ? _self.online
          : online // ignore: cast_nullable_to_non_nullable
              as int,
      receipt: null == receipt
          ? _self.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as int,
      robot: null == robot
          ? _self.robot
          : robot // ignore: cast_nullable_to_non_nullable
              as int,
      lastOffline: null == lastOffline
          ? _self.lastOffline
          : lastOffline // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      follow: null == follow
          ? _self.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      chatPwdOn: null == chatPwdOn
          ? _self.chatPwdOn
          : chatPwdOn // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactStatus,
      shortNo: null == shortNo
          ? _self.shortNo
          : shortNo // ignore: cast_nullable_to_non_nullable
              as String,
      sourceDesc: null == sourceDesc
          ? _self.sourceDesc
          : sourceDesc // ignore: cast_nullable_to_non_nullable
              as String,
      vercode: null == vercode
          ? _self.vercode
          : vercode // ignore: cast_nullable_to_non_nullable
              as String,
      screenshot: null == screenshot
          ? _self.screenshot
          : screenshot // ignore: cast_nullable_to_non_nullable
              as int,
      revokeRemind: null == revokeRemind
          ? _self.revokeRemind
          : revokeRemind // ignore: cast_nullable_to_non_nullable
              as int,
      beBlacklist: null == beBlacklist
          ? _self.beBlacklist
          : beBlacklist // ignore: cast_nullable_to_non_nullable
              as int,
      beDeleted: null == beDeleted
          ? _self.beDeleted
          : beDeleted // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

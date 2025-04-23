import 'dart:convert';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

/// 联系人状态枚举
enum ContactStatus {
  /// 未知状态
  unknown(0),

  /// 正常
  normal(1),

  /// 已拉黑
  blocked(2);

  final int value;
  const ContactStatus(this.value);

  /// 从整数值转换为枚举
  static ContactStatus fromValue(int value) {
    return ContactStatus.values.firstWhere(
      (status) => status.value == value,
      orElse: () => ContactStatus.unknown,
    );
  }
}

/// 用于JSON序列化ContactStatus的转换器
class ContactStatusConverter implements JsonConverter<ContactStatus, int> {
  const ContactStatusConverter();

  @override
  ContactStatus fromJson(int json) => ContactStatus.fromValue(json);

  @override
  int toJson(ContactStatus object) => object.value;
}

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    @Default('') String uid, // 用户ID
    @Default('') String name, // 用户名
    @Default(0) int mute, // 是否静音
    @Default(0) int top, // 是否置顶
    @Default(0) int sex, // 性别
    @Default(0) int online, // 是否在线
    @Default(0) int receipt, // 是否接收消息
    @Default(0) int robot, // 是否机器人
    @Default(0) int lastOffline, // 最后离线时间
    @Default('') String category, // 分类
    @Default(0) int follow, // 关注数
    @Default('') String remark, // 备注
    @Default(0) int chatPwdOn, // 是否开启聊天密码
    @ContactStatusConverter()
    @Default(ContactStatus.unknown)
    ContactStatus status, // 状态
    @Default('') String shortNo, // 短号
    @Default('') String sourceDesc, // 来源描述
    @Default('') String vercode, // 版本号
    @Default(0) int screenshot, // 是否截图
    @Default(0) int revokeRemind, // 是否撤回提醒
    @Default(0) int beBlacklist, // 是否拉黑
    @Default(0) int beDeleted, // 是否删除
    @Default(0) int version, // 版本
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

class ISContact extends ISuspensionBeanPlus {
  final Contact contact;

  ISContact({
    required this.contact,
  });

  factory ISContact.fromJson(Map<String, dynamic> json) {
    return ISContact(
      contact: Contact.fromJson(json),
    );
  }

  // 代理Contact的属性
  String get uid => contact.uid;
  String get name => contact.name;
  String get avatar => Apis.getAvatarUrl(uid);
  String get remark => contact.remark;
  String get category => contact.category;
  int get version => contact.version;
  ContactStatus get status => contact.status;

  @override
  String getSuspensionTag() {
    return tagIndex ?? '';
  }

  @override
  String toString() {
    return json.encode({
      ...contact.toJson(),
      'tagIndex': tagIndex,
      'pinyin': pinyin,
      'shortPinyin': shortPinyin,
      'namePinyin': namePinyin,
    });
  }

  Map<String, dynamic> toJson() {
    return {
      ...contact.toJson(),
      'tagIndex': tagIndex,
      'pinyin': pinyin,
      'shortPinyin': shortPinyin,
      'namePinyin': namePinyin,
    };
  }

  @override
  String getName() => contact.remark.isEmpty ? contact.name : contact.remark;
}

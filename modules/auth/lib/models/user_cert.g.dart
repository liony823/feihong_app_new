// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCert _$UserCertFromJson(Map<String, dynamic> json) => _UserCert(
      uid: json['uid'] as String,
      appId: json['app_id'] as String,
      token: json['token'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      sex: (json['sex'] as num).toInt(),
      category: json['category'] as String,
      shortNo: json['short_no'] as String,
      shortStatus: (json['short_status'] as num).toInt(),
      zone: json['zone'] as String,
      phone: json['phone'] as String,
      chatPwd: json['chat_pwd'] as String,
      lockScreenPwd: json['lock_screen_pwd'] as String,
      lockAfterMinute: (json['lock_after_minute'] as num).toInt(),
      setting: UserSetting.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCertToJson(_UserCert instance) => <String, dynamic>{
      'uid': instance.uid,
      'app_id': instance.appId,
      'token': instance.token,
      'username': instance.username,
      'name': instance.name,
      'sex': instance.sex,
      'category': instance.category,
      'short_no': instance.shortNo,
      'short_status': instance.shortStatus,
      'zone': instance.zone,
      'phone': instance.phone,
      'chat_pwd': instance.chatPwd,
      'lock_screen_pwd': instance.lockScreenPwd,
      'lock_after_minute': instance.lockAfterMinute,
      'setting': instance.setting.toJson(),
    };

_UserSetting _$UserSettingFromJson(Map<String, dynamic> json) => _UserSetting(
      searchByPhone: (json['search_by_phone'] as num).toInt(),
      searchByShort: (json['search_by_short'] as num).toInt(),
      newMsgNotice: (json['new_msg_notice'] as num).toInt(),
      msgShowDetail: (json['msg_show_detail'] as num).toInt(),
      voiceOn: (json['voice_on'] as num).toInt(),
      shockOn: (json['shock_on'] as num).toInt(),
      deviceLock: (json['device_lock'] as num).toInt(),
      offlineProtection: (json['offline_protection'] as num).toInt(),
      muteOfApp: (json['mute_of_app'] as num).toInt(),
    );

Map<String, dynamic> _$UserSettingToJson(_UserSetting instance) =>
    <String, dynamic>{
      'search_by_phone': instance.searchByPhone,
      'search_by_short': instance.searchByShort,
      'new_msg_notice': instance.newMsgNotice,
      'msg_show_detail': instance.msgShowDetail,
      'voice_on': instance.voiceOn,
      'shock_on': instance.shockOn,
      'device_lock': instance.deviceLock,
      'offline_protection': instance.offlineProtection,
      'mute_of_app': instance.muteOfApp,
    };

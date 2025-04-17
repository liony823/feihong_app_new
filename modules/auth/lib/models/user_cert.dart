import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cert.freezed.dart';
part 'user_cert.g.dart';


@freezed
abstract class UserCert with _$UserCert {
  const factory UserCert({
    required String uid,
    required String appId,
    required String token,
    required String username,
    required String name,
    required int sex,
    required String category,
    required String shortNo,
    required int shortStatus,
    required String zone,
    required String phone,
    required String chatPwd,
    required String lockScreenPwd,
    required int lockAfterMinute,
    required UserSetting setting,
  }) = _UserCert;

  factory UserCert.fromJson(Map<String, Object?> json) =>
      _$UserCertFromJson(json);
}

@freezed
abstract class UserSetting with _$UserSetting {
  const factory UserSetting({
    required int searchByPhone,
    required int searchByShort,
    required int newMsgNotice,
    required int msgShowDetail,
    required int voiceOn,
    required int shockOn,
    required int deviceLock,
    required int offlineProtection,
    required int muteOfApp,
  }) = _UserSetting;

  factory UserSetting.fromJson(Map<String, Object?> json) =>
      _$UserSettingFromJson(json);
}

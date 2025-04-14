import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_certification.freezed.dart';
part 'user_certification.g.dart';

@freezed
abstract class UserCertification with _$UserCertification {
  const factory UserCertification({
    required String token,
    required String uid,
    required int tokenExpiredAt,
  }) = _UserCertification;

  factory UserCertification.fromJson(Map<String, Object?> json)
      => _$UserCertificationFromJson(json);
}

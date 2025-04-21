import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_info.g.dart';
part 'search_user_info.freezed.dart';

@freezed
abstract class SearchUserInfo with _$SearchUserInfo {
  const factory SearchUserInfo({
    required String uid,
    required String name,
    required int sex,
    required String introduction,
    required String vercode,
  }) = _SearchUserInfo;

  factory SearchUserInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchUserInfoFromJson(json);
}

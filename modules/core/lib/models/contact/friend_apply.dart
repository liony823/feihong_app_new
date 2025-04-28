import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_apply.freezed.dart';
part 'friend_apply.g.dart';

enum FriendApplyStatus {
  /// 申请
  apply(0),

  /// 同意
  accepted(1),

  /// 拒绝
  refused(2);

  final int value;
  const FriendApplyStatus(this.value);

  static FriendApplyStatus fromValue(int value) {
    return FriendApplyStatus.values.firstWhere(
      (status) => status.value == value,
      orElse: () => FriendApplyStatus.apply,
    );
  }
}

class FriendApplyStatusConverter
    implements JsonConverter<FriendApplyStatus, int> {
  const FriendApplyStatusConverter();

  @override
  FriendApplyStatus fromJson(int json) => FriendApplyStatus.fromValue(json);

  @override
  int toJson(FriendApplyStatus object) => object.value;
}

@freezed
abstract class FriendApply with _$FriendApply {
  const FriendApply._();
  const factory FriendApply({
    required String uid,
    required String toUid,
    required String toName,
    @FriendApplyStatusConverter()
    @Default(FriendApplyStatus.apply)
    FriendApplyStatus status,
    @Default('') String remark,
    @Default('') String createdAt,
    @Default('') String token,
  }) = _FriendApply;

  factory FriendApply.fromJson(Map<String, dynamic> json) =>
      _$FriendApplyFromJson(json);

  String get showToAvatar => Apis.getAvatarUrl(toUid);
}

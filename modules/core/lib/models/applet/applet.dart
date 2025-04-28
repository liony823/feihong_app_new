import 'package:freezed_annotation/freezed_annotation.dart';

part 'applet.g.dart';
part 'applet.freezed.dart';

@freezed
abstract class Applet with _$Applet {
  const factory Applet({
    required int id,
    required String displayName,
    required String key,
    required String icon,
    required String link,
    required int priority,
    required int status,
    required int isDefault,
    required String createdAt,
    required String updatedAt,
  }) = _Applet;

  factory Applet.fromJson(Map<String, dynamic> json) => _$AppletFromJson(json);
}

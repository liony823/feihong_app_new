import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_module.freezed.dart';
part 'app_module.g.dart';

@freezed
abstract class AppModule with _$AppModule {
  const factory AppModule({
    required String sid,
    required String name,
    required String desc,
    required int status,
  }) = _AppModule;

  factory AppModule.fromJson(Map<String, dynamic> json) =>
      _$AppModuleFromJson(json);
}

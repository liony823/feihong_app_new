import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lang_provider.g.dart';

@riverpod
class LangController extends _$LangController {
  @override
  String build() {
    return 'zh';
  }
}
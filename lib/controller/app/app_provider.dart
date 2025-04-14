import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_state.dart';

part 'app_provider.g.dart';

@Riverpod(keepAlive: true)
class AppController extends _$AppController {
  @override
  AppState build() {
    return AppState(isInitialized: true);
  }

  // 判断应用是否已初始化
  bool get isInitialized => state.isInitialized;
}

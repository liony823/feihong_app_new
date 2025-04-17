import 'package:common/common.dart';

class BaseModule {
  static Future<void> initialize() async {
    AppLogger.i('Base模块初始化');
  }
}

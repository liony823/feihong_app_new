import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

class ContactModule {
  static Future<void> initialize() async {
    AppLogger.i('Contact模块初始化');
  }

  static List<AutoRoute> getRoutes() {
    return [];
  }
}

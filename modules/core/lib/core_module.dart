import 'package:common/common.dart';

import 'database/database.dart';

class CoreModule {
  static Future<void> initialize() async {
    AppLogger.i('Core模块初始化');
    await DB.instance.init();
  }
}

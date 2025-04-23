import 'package:common/common.dart';

import 'api/api_config.dart';
import 'database/database.dart';

class CoreModule {
  static Future<void> initialize() async {
    AppLogger.i('Core模块初始化');
    AppLogger.i('baseUrl: ${ApiConfig.baseUrl}');
    await DB.instance.init();
  }
}

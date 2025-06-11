

import 'package:common/common.dart';


/// 公共模块初始化类
class CommonModule {


  /// 初始化公共模块
  static Future<void> initialize() async {
    await SpHelper.init();
    await LocaleSettings.useDeviceLocale();
    await AppConstants.initCacheDir();
    await AppConstants.initDevice();
  }
}

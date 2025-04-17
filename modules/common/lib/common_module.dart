import 'dart:io';

import 'package:common/common.dart';
import 'package:device_info_plus/device_info_plus.dart';

/// 公共模块初始化类
class CommonModule {
  static String deviceID = '';
  static String deviceName = '';
  static String deviceModel = '';

  /// 初始化公共模块
  static Future<void> initialize() async {
    await SpHelper.init();
    await LocaleSettings.useDeviceLocale();
    await getDeviceInfo();
  }

  // 获取设备信息
  static Future getDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      deviceModel = iosDeviceInfo.modelName;
      deviceID = iosDeviceInfo.identifierForVendor ?? '';
      deviceName = iosDeviceInfo.name;
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      deviceModel = androidDeviceInfo.model;
      deviceID = androidDeviceInfo.serialNumber;
      deviceName = androidDeviceInfo.device;
    }
  }
}

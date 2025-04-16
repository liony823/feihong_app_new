import 'dart:io';

import 'package:common/common.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Config {
  static late String appName;
  static AppConfig? appConfig;
  static String deviceID = '';
  static String deviceName = '';
  static String deviceModel = '';

  static Future init(Function() runApp) async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await DataSp.init();
    await LocaleSettings.useDeviceLocale();
    HttpUtil.init();
    await getAppConfig();
    await getDeviceInfo();

    FlutterNativeSplash.remove();

    runApp();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    var brightness = Platform.isAndroid ? Brightness.dark : Brightness.light;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: brightness,
      statusBarIconBrightness: brightness,
    ));

    final packageInfo = await PackageInfo.fromPlatform();
    appName = packageInfo.appName;
  }

  // 获取应用配置
  static Future<AppConfig?> getAppConfig() async {
    try {
      // 获取应用版本信息
      final packageInfo = await PackageInfo.fromPlatform();
      final version = double.tryParse(packageInfo.version) ?? 1.0;

      // 调用 API 获取应用配置
      final config = await Apis.getAppConfig(version);
      appConfig = AppConfig.fromJson(config);
      return appConfig;
    } catch (e) {
      Logger.print(e);
      return null;
    }
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

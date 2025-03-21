import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'i18n/localized.g.dart';
import 'utils/data_sp.dart';
import 'utils/http_util.dart';

class Config {
  static const apiURL = 'https://api.feihong.com';
  static late String appName;

  static Future init(Function() runApp) async {
    WidgetsFlutterBinding.ensureInitialized();
    await DataSp.init();
    HttpUtil.init();
    LocaleSettings.useDeviceLocale();

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
}

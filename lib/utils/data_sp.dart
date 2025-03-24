import 'package:feihong/models/models.dart';
import 'package:flutter/material.dart';

import 'sp_util.dart';

class DataSp {
  DataSp._();

  static const String _userCertification = 'userCertification';
  static const String _appLang = 'appLang';
  static const String _appTheme = 'appTheme';

  static String get uid => getUserCertification()?.uid ?? '';
  static String get token => getUserCertification()?.token ?? '';

  static init() async {
    await SpUtil().init();
  }

  static Future<bool>? clear() {
    return SpUtil().clear();
  }

  static Future<bool>? setAppLang(String lang) {
    return SpUtil().putString(_appLang, lang);
  }

  static String? getAppLang() {
    return SpUtil().getString(_appLang);
  }

  static Future<bool>? setAppTheme(ThemeMode theme) {
    return SpUtil().putString(_appTheme, theme.name);
  }

  static ThemeMode? getAppTheme() {
    final theme = SpUtil().getString(_appTheme);
    return theme != null ? ThemeMode.values.byName(theme) : null;
  }

  static Future<bool>? setUserCertification(
      UserCertification userCertification) {
    return SpUtil().putObject(_userCertification, userCertification);
  }

  static UserCertification? getUserCertification() {
    return SpUtil().getObj<UserCertification>(_userCertification,
        (v) => UserCertification.fromJson(v as Map<String, dynamic>));
  }
}

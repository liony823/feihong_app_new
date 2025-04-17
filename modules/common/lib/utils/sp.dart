import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  static final SpHelper _instance = SpHelper._();

  factory SpHelper() => _instance;

  SpHelper._();

  static const String _uid = 'uid';
  static const String _token = 'token';
  static const String _appLang = 'appLang';
  static const String _appTheme = 'appTheme';
  static const String _maxSqlVersion = 'maxSqlVersion';

  static String get uid => getUID() ?? '';
  static String get token => getToken() ?? '';
  static String get appLang => getAppLang() ?? 'zh';
  static int get maxSqlVersion => getMaxSqlVersion() ?? 0;

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

  static Future<bool>? setUID(String uid) {
    return SpUtil().putString(_uid, uid);
  }

  static String? getUID() {
    return SpUtil().getString(_uid);
  }

  static Future<bool>? setToken(String token) {
    return SpUtil().putString(_token, token);
  }

  static String? getToken() {
    return SpUtil().getString(_token);
  }

  static Future<bool>? setMaxSqlVersion(int version) {
    return SpUtil().putInt(_maxSqlVersion, version);
  }

  static int? getMaxSqlVersion() {
    return SpUtil().getInt(_maxSqlVersion);
  }
}

class SpUtil {
  SharedPreferences? prefs;

  SpUtil._();

  static final SpUtil _singleton = SpUtil._();

  factory SpUtil() => _singleton;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<bool>? putObject(String key, Object value) {
    return prefs?.setString(key, json.encode(value));
  }

  T? getObj<T>(String key, T Function(Map v) f, {T? defValue}) {
    final map = getObject(key);
    return map == null ? defValue : f(map);
  }

  Map? getObject(String key) {
    final data = prefs?.getString(key);
    return (data == null || data.isEmpty) ? null : json.decode(data);
  }

  Future<bool>? putObjectList(String key, List<Object> list) {
    final dataList = list.map((value) => json.encode(value)).toList();
    return prefs?.setStringList(key, dataList);
  }

  List<T>? getObjList<T>(
    String key,
    T Function(Map v) f, {
    List<T>? defValue = const [],
  }) {
    List<Map>? dataList = getObjectList(key);
    List<T>? list = dataList?.map((value) => f(value)).toList();
    return list ?? defValue;
  }

  List<Map>? getObjectList(String key) {
    List<String>? dataLis = prefs?.getStringList(key);
    return dataLis?.map((value) {
      Map dataMap = json.decode(value);
      return dataMap;
    }).toList();
  }

  String? getString(String key, {String? defValue = ''}) {
    return prefs?.getString(key) ?? defValue;
  }

  Future<bool>? putString(String key, String value) {
    return prefs?.setString(key, value);
  }

  bool? getBool(String key, {bool? defValue = false}) {
    return prefs?.getBool(key) ?? defValue;
  }

  Future<bool>? putBool(String key, bool value) {
    return prefs?.setBool(key, value);
  }

  int? getInt(String key, {int? defValue = 0}) {
    return prefs?.getInt(key) ?? defValue;
  }

  Future<bool>? putInt(String key, int value) {
    return prefs?.setInt(key, value);
  }

  double? getDouble(String key, {double? defValue = 0.0}) {
    return prefs?.getDouble(key) ?? defValue;
  }

  Future<bool>? putDouble(String key, double value) {
    return prefs?.setDouble(key, value);
  }

  List<String>? getStringList(String key, {List<String>? defValue = const []}) {
    return prefs?.getStringList(key) ?? defValue;
  }

  Future<bool>? putStringList(String key, List<String> value) {
    return prefs?.setStringList(key, value);
  }

  dynamic getDynamic(String key, {Object? defValue}) {
    return prefs?.get(key) ?? defValue;
  }

  bool? haveKey(String key) {
    return prefs?.getKeys().contains(key);
  }

  bool? containsKey(String key) {
    return prefs?.containsKey(key);
  }

  Set<String>? getKeys() {
    return prefs?.getKeys();
  }

  Future<bool>? remove(String key) {
    return prefs?.remove(key);
  }

  Future<bool>? clear() {
    return prefs?.clear();
  }

  Future<void>? reload() {
    return prefs?.reload();
  }

  bool isInitialized() {
    return null != prefs;
  }

  SharedPreferences? getSp() {
    return prefs;
  }
}

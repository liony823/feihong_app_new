import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_region/device_region.dart';
import 'package:world_countries/world_countries.dart' as wc;

part 'core_service.g.dart';

@Riverpod(keepAlive: true)
Future<String> getSIMCountryCode(Ref ref) async {
  final countryCode = await DeviceRegion.getSIMCountryCode();
  final country = wc.WorldCountry.fromCodeShort(countryCode ?? '');
  return country.idd.phoneCode();
}

@Riverpod(keepAlive: true)
FutureOr<List<Country>> getCountries(Ref ref) async {
  try {
    final response = await ApiClient.instance.get(ApiConfig.getCountries);
    return (response.data as List).map((e) => Country.fromJson(e)).toList();
  } catch (e) {
    AppLogger.e('获取国家区号列表失败', e);
    return [];
  }
}

@Riverpod(keepAlive: true)
FutureOr<AppConfig?> getAppConfig(Ref ref) async {
  try {
    final response = await ApiClient.instance.get(ApiConfig.getAppConfig);
    return AppConfig.fromJson(response.data);
  } catch (e) {
    AppLogger.e('获取应用配置失败', e);
    return null;
  }
}

@Riverpod(keepAlive: true)
FutureOr<List<AppModule>> getAppModules(Ref ref) async {
  try {
    final response = await ApiClient.instance.get(ApiConfig.getAppModule);
    return (response.data as List).map((e) => AppModule.fromJson(e)).toList();
  } catch (e) {
    AppLogger.e('获取应用模块失败', e);
    return [];
  }
}

@Riverpod(keepAlive: true)
Future<UserInfo?> getCurrentUser(Ref ref, String uid) async {
  try {
    if (uid.isEmpty) {
      return null;
    }
    final response = await ApiClient.instance.get('/users/$uid');
    return UserInfo.fromJson(response.data);
  } catch (e) {
    AppLogger.e('获取当前用户失败', e);
    return null;
  }
}

@riverpod
FutureOr<String> getMyQrCode(Ref ref) async {
  try {
    final response = await ApiClient.instance.get('/user/qrcode');
    return response.data['data'];
  } catch (e) {
    AppLogger.e('获取我的二维码失败', e);
    return '';
  }
}

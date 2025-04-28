import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_region/device_region.dart';
import 'package:just_audio/just_audio.dart';
import 'package:world_countries/helpers.dart';
import 'package:world_countries/world_countries.dart' as wc;

part 'core_service.g.dart';

class AppCoreState {
  bool isRunningBackground = false;
  final AudioPlayer? audioPlayer;
  final InternetStatus? internetStatus; 

  AppCoreState({
    this.isRunningBackground = false,
    this.audioPlayer,
    this.internetStatus
  });
  AppCoreState copyWith({
    bool? isRunningBackground,
    AudioPlayer? audioPlayer,
    InternetStatus? internetStatus,
  }) {
    return AppCoreState(
      audioPlayer: audioPlayer ?? this.audioPlayer,
      internetStatus: internetStatus ?? this.internetStatus,
      isRunningBackground: isRunningBackground ?? this.isRunningBackground,
    );
  }
}

@Riverpod(keepAlive: true)
class AppCoreService extends _$AppCoreService {  
  @override
  AppCoreState build() {

    SystemChannels.lifecycle.setMessageHandler((message) async {
      if (message == AppLifecycleState.resumed.name) {
        state = state.copyWith(isRunningBackground: false);
      } else if (message == AppLifecycleState.paused.name) {
        state = state.copyWith(isRunningBackground: true);
      }
      return message;
    });

    final internetListener = InternetConnection().onStatusChange.listen(_onInternetStatusChange);

    ref.onDispose(() {
      internetListener.cancel();
      state.audioPlayer?.dispose();
    });

    final audioPlayer = AudioPlayer();
    audioPlayer.setAsset(AudioRes.msgIncoming,package: 'common');

    return AppCoreState(
      isRunningBackground: false,
      audioPlayer: audioPlayer
    );
  }


  void _onInternetStatusChange(InternetStatus status) {
    state = state.copyWith(internetStatus: status);
    if (status == InternetStatus.disconnected) {
      final context = Global.context;
      if (context != null && context.mounted){
        context.showSnackBar(SnackBar(
          content: Text(context.t.c.networkError),
          duration: const Duration(seconds: 2),
        ));
      }
    }
  }

  void playIncomingMessageSound() {
    state.audioPlayer?.play();
  }
}

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

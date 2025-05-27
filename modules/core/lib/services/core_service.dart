import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_region/device_region.dart';
import 'package:just_audio/just_audio.dart';
import 'package:world_countries/world_countries.dart' as wc;

part 'core_service.g.dart';

class AppCoreState {
  bool isRunningBackground = false;
  bool isRefreshChatActivityMessage = false;
  final AudioPlayer? audioPlayer;
  final InternetStatus? internetStatus; 

  AppCoreState({
    this.isRunningBackground = false,
    this.isRefreshChatActivityMessage = false,
    this.audioPlayer,
    this.internetStatus
  });
  AppCoreState copyWith({
    bool? isRunningBackground,
    bool? isRefreshChatActivityMessage,
    AudioPlayer? audioPlayer,
    InternetStatus? internetStatus,
  }) {
    return AppCoreState(
      audioPlayer: audioPlayer ?? this.audioPlayer,
      internetStatus: internetStatus ?? this.internetStatus,
      isRunningBackground: isRunningBackground ?? this.isRunningBackground,
      isRefreshChatActivityMessage: isRefreshChatActivityMessage?? this.isRefreshChatActivityMessage,
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


    ref.onDispose(() {
      state.audioPlayer?.dispose();
    });

    final audioPlayer = AudioPlayer();
    audioPlayer.setAsset(AudioRes.msgIncoming);

    return AppCoreState(
      isRunningBackground: false,
      audioPlayer: audioPlayer
    );
  }

  void playIncomingMessageSound() {
    state.audioPlayer?.play();
  }

  void setIsRefreshChatActivityMessage(bool isRefreshChatActivityMessage) {
    state = state.copyWith(isRefreshChatActivityMessage: isRefreshChatActivityMessage);
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

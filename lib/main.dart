import 'dart:io';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:feihong/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await CoreModule.initialize();
  await CommonModule.initialize();

  FlutterNativeSplash.remove();
  runApp(
    ProviderScope(
      observers: [
        // 日志观察器，用于调试
        _ProviderLogger(),
      ],
      child: const App(),
    ),
  );

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
}

/// Riverpod日志观察器
class _ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    debugPrint('Provider ${provider.name ?? provider.runtimeType} was added');
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    debugPrint(
        'Provider ${provider.name ?? provider.runtimeType} was disposed');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('Provider ${provider.name ?? provider.runtimeType} was updated');
  }
}

import 'package:common/common.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:common/widgets/splash_screen.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toastification/toastification.dart';
import 'package:world_countries/world_countries.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/app_router.dart';

// 定义应用初始化状态
class AppInitState {
  final bool isInitializing;
  final bool isInitialized;
  final String? error;

  AppInitState({
    this.isInitializing = false,
    this.isInitialized = false,
    this.error,
  });

  AppInitState copyWith({
    bool? isInitializing,
    bool? isInitialized,
    String? error,
  }) {
    return AppInitState(
      isInitializing: isInitializing ?? this.isInitializing,
      isInitialized: isInitialized ?? this.isInitialized,
      error: error ?? this.error,
    );
  }
}

// 创建应用初始化Provider
final appInitProvider =
    StateNotifierProvider<AppInitNotifier, AppInitState>((ref) {
  return AppInitNotifier(ref);
});

class AppInitNotifier extends StateNotifier<AppInitState> {
  final Ref _ref;

  AppInitNotifier(this._ref) : super(AppInitState()) {
    // 在构造函数中启动初始化流程
    _initialize();
  }

  Future<void> _initialize() async {
    if (state.isInitializing || state.isInitialized) return;

    state = state.copyWith(isInitializing: true);

    try {
      _ref.read(appCoreServiceProvider);
      // 先初始化国家数据
      await _ref.read(getCountriesProvider.future);

      // 获取应用配置
      final appConfig = await _ref.read(getAppConfigProvider.future);

      if (appConfig != null) {
        final userCert = SpHelper.userCert;

        if (userCert != null) {
          // 初始化IM服务
          await _ref.read(iMServiceProvider.notifier).initialize(
               userCert
              );
        }
      }

      state = state.copyWith(isInitializing: false, isInitialized: true);
    } catch (e) {
      AppLogger.e('应用初始化失败', e);
      state = state.copyWith(
        isInitializing: false,
        error: e.toString(),
      );
    }
  }

  void retryInitialization() {
    state = AppInitState();
    _initialize();
  }
}

class FeiApp extends ConsumerStatefulWidget {
  const FeiApp({super.key});

  @override
  ConsumerState<FeiApp> createState() => _AppState();
}

class _AppState extends ConsumerState<FeiApp>
    with SplashScreenStateMixin, TickerProviderStateMixin {
  final timeOfStartMs = DateTime.now().millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
  }

  void _handleInitialized() {
    final now = DateTime.now().millisecondsSinceEpoch;

    if (now - timeOfStartMs > 1500) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        forwardAnimations();
      });
    } else {
      Future.delayed(const Duration(milliseconds: 1500)).then((value) {
        forwardAnimations();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 监听应用初始化状态
    final initState = ref.watch(appInitProvider);

    // 当初始化完成时，处理动画
    if (initState.isInitialized) {
      _handleInitialized();
    }

    // 读取应用模块
    final modules = ref.watch(getAppModulesProvider);
    final appRouter = AppRouter(
      navigatorKey: Global.navigatorKey,
      modules: modules.value ?? [],
    );

    return StreamChatConfiguration(
      data: StreamChatConfigurationData(),
      child: StreamChatTheme(
        data: _getTheme(context, null),
        child: OKToast(
          child: ToastificationWrapper(
            child: TranslationProvider(
              child: ScreenUtilInit(
                designSize: const Size(375, 812),
                minTextAdapt: true,
                builder: (context, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      MaterialApp.router(
                        routerConfig: appRouter.config(),
                        theme: AppTheme.lightTheme,
                        darkTheme: AppTheme.darkTheme,
                        locale: TranslationProvider.of(context).flutterLocale,
                        supportedLocales: [
                          ...AppLocaleUtils.supportedLocales,
                        ],
                        localizationsDelegates: [
                          TypedLocaleDelegate(),
                          GlobalMaterialLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        builder: (context, child) => Portal(
                          child: Overlay(
                            initialEntries: [
                              OverlayEntry(
                                builder: (context) => ToastificationConfigProvider(
                                  config: ToastificationConfig(
                                    alignment: Alignment.topCenter,
                                  ),
                                  child: child!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (!animationCompleted) buildAnimation(),
                      if (initState.error != null && !animationCompleted)
                        Positioned(
                          bottom: 20,
                          child: ElevatedButton(
                            onPressed: () {
                              ref
                                  .read(appInitProvider.notifier)
                                  .retryInitialization();
                            },
                            child: ErrorRetryWidget(
                              message: initState.error,
                              onRetry: () {
                                ref
                                    .read(appInitProvider.notifier)
                                    .retryInitialization();
                              },
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  StreamChatThemeData _getTheme(
    BuildContext context,
    StreamChatThemeData? themeData,
  ) {
    final appBrightness = Theme.of(context).brightness;
    final defaultTheme = StreamChatThemeData(brightness: appBrightness);
    return defaultTheme.merge(themeData);
  }
}

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toastification/toastification.dart';
import 'package:world_countries/world_countries.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/app_router.dart';

class App extends HookConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modules = ref.watch(getAppModulesProvider);
    final appRouter = AppRouter(
      navigatorKey: Global.navigatorKey,
      modules: modules.value ?? [],
    );
    return OKToast(
      child: ToastificationWrapper(
        child: TranslationProvider(
          child: ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp.router(
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
                builder: (context, child) => Overlay(
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
              );
            },
          ),
        ),
      ),
    );
  }
}

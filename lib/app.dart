import 'package:common/common.dart';
import 'package:feihong/controller/app/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:toastification/toastification.dart';
import 'package:world_countries/world_countries.dart';

import 'controller/locale/locale_provider.dart';
import 'route/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.watch(localeControllerProvider);
        ref.watch(appControllerProvider);
        return OKToast(
          child: ToastificationWrapper(
            child: TranslationProvider(
              child: ScreenUtilInit(
                designSize: const Size(375, 812),
                minTextAdapt: true,
                builder: (context, child) => MaterialApp.router(
                  title: context.t.c.appNmae,
                  routerConfig: _appRouter.config(),
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
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

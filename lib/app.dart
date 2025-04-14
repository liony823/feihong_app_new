import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
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
        return ToastificationWrapper(
          child: TranslationProvider(
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              builder: (context, child) => MaterialApp.router(
                title: context.t.appNmae,
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
                builder: (context, child) => ToastificationConfigProvider(
                  config: ToastificationConfig(
                    alignment: Alignment.topCenter,
                  ),
                  child: LoaderOverlay(
                    overlayWidgetBuilder: (_) {
                      //ignored progress for the moment
                      return Center(
                        child: SizedBox(
                          width: 32.w,
                          height: 32.w,
                          child: CircularProgressIndicator(
                            backgroundColor: Styles.neutral200,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Styles.brandColor,
                            ),
                          ),
                        ),
                      );
                    },
                    overlayColor:
                        Styles.backgroundColor.withValues(alpha: 0.25),
                    child: child!,
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

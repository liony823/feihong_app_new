import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:world_countries/world_countries.dart';

import 'i18n/localized.g.dart';
import 'route/router.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) => DefaultTextStyle(
          style: AppTheme.lightTheme.textTheme.bodyMedium!,
          child: MaterialApp.router(
            title: context.t.appNmae,
            routerConfig: _appRouter.config(),
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: [
              ...AppLocaleUtils.supportedLocales,
            ],
            localizationsDelegates: [
              TypedLocaleDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, child) => LoaderOverlay(
              overlayWidgetBuilder: (_) {
                //ignored progress for the moment
                return Center(
                  child: SizedBox(
                    width: 32.w,
                    height: 32.w,
                    child: CircularProgressIndicator(
                      year2023: false,
                    ),
                  ),
                );
              },
              overlayColor: Colors.white.withValues(alpha: .6),
              child: child!,
            ),
          ),
        ),
      ),
    );
  }
}

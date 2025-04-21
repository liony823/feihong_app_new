import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

import 'route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class BaseRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            path: Routes.splash,
            transitionsBuilder: TransitionsBuilders.noTransition,
            keepHistory: false,
            initial: true),
        AutoRoute(
          page: WebViewRoute.page,
          path: Routes.webview,
        ),
        CustomRoute(
          page: HomeRoute.page,
          path: Routes.home,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: LanguageRoute.page, path: Routes.language),
        AutoRoute(page: SettingRoute.page, path: Routes.setting),
      ];
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

import './router.gr.dart';
export 'router.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Page,Route',
    generateForDir: ['lib/ui'],
    deferredLoading: true)
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: Global.navigatorKey);

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          keepHistory: false,
          initial: true,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(
          page: SignupRoute.page,
        ),
        CustomRoute(
          page: SigninRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: LoginWithDeviceRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: LangRoute.page,
        ),
        AutoRoute(
          page: WebViewRoute.page,
        ),
        AutoRoute(
          page: VerifyPhoneRoute.page,
        ),
        AutoRoute(
          page: SetSelfInfoRoute.page,
        )
      ];
}

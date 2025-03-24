import 'package:auto_route/auto_route.dart';
import 'package:feihong/global.dart';

import 'router.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Page,Route',
    generateForDir: ['lib/pages/ui'],
    deferredLoading: true)
class AppRouter extends RootStackRouter {
  AppRouter() : super(navigatorKey: Global.navigatorKey);

  static const String splash = 'Splash';

  static const String signup = 'Signup';
  static const String signin = 'Signin';

  static const String verifyCode = 'VerifyCode';
  static const String forgetPassword = 'ForgetPassword';

  static const String resetPassword = 'ResetPassword';

  static const String home = 'Home';

  static const String profile = 'Profile';

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: SignupRoute.page,
        ),
        AutoRoute(
          page: SigninRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: LangRoute.page,
        )
      ];
}

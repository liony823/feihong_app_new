import 'package:auto_route/auto_route.dart';
import 'package:feihong_app_new/global.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Page,Route',
    generateForDir: ['lib/pages'],
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
  List<AutoRoute> get routes => [];
}

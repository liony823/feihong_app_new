import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

import 'route.gr.dart';

@AutoRouterConfig()
class AuthRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: LoginRoute.page,
            path: Routes.login,
            transitionsBuilder: TransitionsBuilders.noTransition),
        CustomRoute(
            page: LoginWithDeviceRoute.page,
            path: Routes.loginWithAuto,
            transitionsBuilder: TransitionsBuilders.noTransition),
        AutoRoute(
          page: RegisterRoute.page,
          path: Routes.register,
        ),
        AutoRoute(page: SetSelfInfoRoute.page, path: Routes.setSelfInfo),
        AutoRoute(
            page: SetSelfSecurityRoute.page, path: Routes.setSelfSecurity),
        AutoRoute(page: VerifyPhoneRoute.page, path: Routes.verifyCode)
      ];
}

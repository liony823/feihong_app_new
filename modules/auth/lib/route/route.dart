import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

import 'route.gr.dart';

@AutoRouterConfig()
class AuthRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: LoginRoute.page,
          path: Routes.login,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            if (context.router.stackData.length > 2) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            }

            return child;
          },
        ),
        CustomRoute(
            page: LoginWithDeviceRoute.page,
            path: Routes.loginWithAuto,
            transitionsBuilder: TransitionsBuilders.noTransition),
        CustomRoute(
          page: AccountManagerRoute.page,
          path: Routes.accountManager,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: Routes.register,
        ),
        AutoRoute(page: SetSelfInfoRoute.page, path: Routes.setSelfInfo),
        AutoRoute(
            page: SetSelfSecurityRoute.page, path: Routes.setSelfSecurity),
        AutoRoute(page: VerifyPhoneRoute.page, path: Routes.verifyCode),
      ];
}

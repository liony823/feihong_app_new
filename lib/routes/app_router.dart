import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base/base.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

export 'package:base/route/route.gr.dart';
export 'package:auth/route/route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final List<AutoRoute> _routes = [];

  AppRouter({
    required GlobalKey<NavigatorState> navigatorKey,
    required List<AppModule> modules,
  }) : super(navigatorKey: navigatorKey) {
    _routes.addAll(BaseRouter().routes);
    _routes.addAll(AuthRouter().routes);
    // for (var module in modules) {
    //   if (module.sid == 'base') {
    //   } else if (module.sid == 'auth') {}
    // }
  }

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
          keepHistory: false,
        ),
        ..._routes,
      ];
}

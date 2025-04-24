import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base/base.dart';
import 'package:common/common.dart';
import 'package:contact/contact.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

export 'package:base/route/route.gr.dart';
export 'package:auth/route/route.gr.dart';

class AppRouter extends RootStackRouter {
  final List<AutoRoute> _routes = [];

  AppRouter({
    required GlobalKey<NavigatorState> navigatorKey,
    required List<AppModule> modules,
  }) : super(navigatorKey: navigatorKey) {
    _routes.addAll(BaseRouter().routes);
    _routes.addAll(AuthRouter().routes);
    _routes.addAll(ContactRouter().routes);
    // for (var module in modules) {
    //   if (module.sid == 'base') {
    //   } else if (module.sid == 'auth') {}
    // }
  }

  @override
  List<AutoRoute> get routes => _routes;

  @override
  List<AutoRouteGuard> get guards => [AuthGuard()];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final uid = SpHelper.uid;
    if (uid.isNotEmpty || whiteRoutes.contains(resolver.route.path)) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(LoginRoute());
    }
  }
}

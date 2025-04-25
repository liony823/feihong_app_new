import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

import 'route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class ContactRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FriendApplyRoute.page, path: Routes.friendApply),
        CustomRoute(
          page: SearchUserRoute.page,
          path: Routes.addFriend,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.25),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            )),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          predictiveBackPageTransitionsBuilder:
              (context, animation, secondaryAnimation, child) =>
                  SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -0.15),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            )),
            child: FadeTransition(opacity: animation, child: child),
          ),
        ),
        AutoRoute(
          page: FriendHomeRoute.page, 
        )
      ];
}

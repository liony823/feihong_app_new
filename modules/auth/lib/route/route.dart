import 'package:auto_route/auto_route.dart';

import 'route.gr.dart';

@AutoRouterConfig()
class AuthRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition),
        CustomRoute(
            page: LoginWithDeviceRoute.page,
            transitionsBuilder: TransitionsBuilders.noTransition),
      ];
}

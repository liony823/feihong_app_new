import 'package:auto_route/auto_route.dart';

import 'route.gr.dart';

@AutoRouterConfig()
class BaseRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
      ];
}

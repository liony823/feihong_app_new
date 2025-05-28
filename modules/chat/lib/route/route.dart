import 'package:auto_route/auto_route.dart';

import 'route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class ChatRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: ChatRoute.page,
    )
  ];
}

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class ChatRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [];
}

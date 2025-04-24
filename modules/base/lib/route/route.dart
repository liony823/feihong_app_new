import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

import 'route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class BaseRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WebViewRoute.page,
          path: Routes.webview,
        ),
        CustomRoute(
          page: HomeRoute.page,
          path: Routes.home,
          transitionsBuilder: TransitionsBuilders.noTransition,
          initial: true,
        ),
        AutoRoute(page: LanguageRoute.page, path: Routes.language),
        CustomRoute(
          page: SettingRoute.page,
          path: Routes.setting,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        AutoRoute(page: ProfileRoute.page, path: Routes.profile),
        AutoRoute(page: SetAvatarRoute.page, path: Routes.setAvatar),
        AutoRoute(page: SetNicknameRoute.page, path: Routes.setNickname),
        AutoRoute(page: SetIntroRoute.page, path: Routes.setIntro),
        AutoRoute(page: SetGenderRoute.page, path: Routes.setGender),
        AutoRoute(
          page: PersonalQrcodeRoute.page,
          path: Routes.personalQrcode,
        ),
      ];
}

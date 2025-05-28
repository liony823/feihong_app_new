class Routes {
  static const String webview = '/webview';
  static const String home = '/home';
  static const String language = '/language';
  static const String login = '/login';
  static const String loginWithAuto = '/loginWithAuto';
  static const String register = '/register';
  static const String forgotPassword = '/forgotPassword';
  static const String resetPassword = '/resetPassword';
  static const String verifyCode = '/verifyCode';
  static const String setSelfInfo = '/setSelfInfo';
  static const String setSelfSecurity = '/setSelfSecurity';
  static const String accountManager = '/accountManager';

  static const String profile = '/profile';
  static const String setAvatar = '/setAvatar';
  static const String setNickname = '/setNickname';
  static const String setIntro = '/setIntro';
  static const String setGender = '/setGender';
  static const String personalQrcode = '/personalQrcode';

  static const String contact = '/contact';
  static const String friendApply = '/friendApply';
  static const String groupApply = '/groupApply';
  static const String groupList = '/groupList';
  static const String userProfile = '/userProfile';
  static const String groupProfile = '/groupProfile';
  static const String addFriend = '/addFriend';
  static const String addGroup = '/addGroup';

  static const String chat = '/chat';

  static const String setting = '/setting';
}

const List<String> whiteRoutes = [
  Routes.login,
  Routes.loginWithAuto,
  Routes.register,
  Routes.forgotPassword,
  Routes.resetPassword,
  Routes.verifyCode,
  Routes.language,
  Routes.webview,
];

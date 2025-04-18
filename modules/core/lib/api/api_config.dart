/// API配置类
class ApiConfig {
  /// API基础URL
  static const String baseUrl = 'http://127.0.0.1:8090/v1';

  /// 公共模块
  static const String getCountries = '/common/countries'; // 获取国家区号列表
  static const String getAppConfig = '/common/appconfig'; // 获取应用配置
  static const String getAppModule = '/common/appmodule'; // 获取应用模块
  static const String getChatBg = '/common/chatbg'; // 获取聊天背景

  /// 用户模块
  static const String loginByPhone = '/user/phonelogin';
  static const String loginByUsername = '/user/usernameLogin';
  static const String registerByPhone = '/user/register';
  static const String registerByUsername = '/user/usernameregister';
  static const String sendRegisterVerificationCode = '/user/sms/registercode';
  static const String sendForgetPwdVerificationCode = '/user/sms/forgetpwd';
  static const String updateUserInfo = '/user/current';
  static const String setSecurityQuestion = '/user/security/question';
  static const String getSecurityQuestion = '/user/security/question';
  static const String resetPwdByPhone = '/user/pwdforget';
  static const String resetPwdBySecurityQuestion = '/user/pwdforgetByquestion';
  static const String logout = '/user/quit';

  // 联系人模块
  static const String getFriendApplyUnreadCount =
      '/user/reddot/friendApply'; // 获取好友申请未读数量
  static const String clearFriendApplyUnread =
      '/user/reddot/friendApply'; // 清除好友申请未读

  // 小程序模块
  static const String getAppletList = '/applet'; // 获取小程序列表

  /// 环境配置
  static const bool isDevelopment = true;

  /// 私有构造函数，防止实例化
  ApiConfig._();
}

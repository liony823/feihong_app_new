/// API配置类
class ApiConfig {
  /// API基础URL
  static const String baseUrl = 'http://172.16.175.168:8090/v1';

  static const String baseIMUrl = 'http://172.16.175.168:5001';

  static const String health = '/health'; // 健康检查

  /// 公共模块
  static const String getCountries = '/common/countries'; // 获取国家区号列表
  static const String getAppConfig = '/common/appconfig'; // 获取应用配置
  static const String getAppModule = '/common/appmodule'; // 获取应用模块
  static const String getChatBg = '/common/chatbg'; // 获取聊天背景

  /// 用户模块
  static const String loginByPhone = '/user/phonelogin';
  static const String loginByUsername = '/user/usernamelogin';
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

  // 会话模块
  static const String syncConversation = '/conversation/sync';
  static const String ackConverMsg = '/conversation/syncack';
  static const String clearUnread = '/coversation/clearUnread';
  
  // 消息模块
  static const String syncMessage = '/message/sync';
  static const String syncChannelMessage = '/message/channel/sync';
  static const String offsetMessage = '/message/offset';

  // 联系人模块
  static const String getFriendApplyUnreadCount =
      '/user/reddot/friendApply'; // 获取好友申请未读数量
  static const String clearFriendApplyUnread =
      '/user/reddot/friendApply'; // 清除好友申请未读
  static const String syncContacts = '/friend/sync'; // 同步联系人
  static const String applyFriend = '/friend/apply'; // 申请添加好友
  static const String getFriendApplyList = '/friend/apply'; // 获取好友申请列表
  static const String addFriendApply = '/friend/apply'; // 添加好友申请
  static const String sureFriendApply = '/friend/sure'; // 确认好友申请
  static const String refuseFriendApply = '/friend/:to_uid'; // 拒绝好友申请

  // 搜索模块
  static const String searchUser = '/user/search'; // 搜索用户

  // 小程序模块
  static const String getAppletList = '/applet'; // 获取小程序列表

  /// 环境配置
  static const bool isDevelopment = true;

  /// 私有构造函数，防止实例化
  ApiConfig._();
}

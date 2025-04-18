/// 应用常量
class AppConstants {
  // 应用相关
  static const String appName = '飞宏IM';
  static const String appVersion = '1.0.0';

  // API相关
  static const int connectionTimeout = 15000; // 毫秒
  static const int receiveTimeout = 15000; // 毫秒

  // 缓存相关
  static const int cacheDuration = 7; // 天

  // 图片相关
  static const int maxImageSize = 10 * 1024 * 1024; // 10MB

  // 其他
  static const int maxRetryCount = 3;

  // 设备相关
  static const int deviceMobileFlag = 0;
  static const int deviceWebFlag = 1;
  static const int devicePcFlag = 2;

  // 私有构造函数，防止实例化
  AppConstants._();
}

enum FileType {
  // TypeAvatar 头像
  avatar,
  // TypeChat 聊天文件
  chat,
  // TypeMoment 动态文件
  moment,
  // TypeMomentCover 动态封面
  momentcover,
  // TypeSticker 表情
  sticker,
  // TypeReport 举报
  report,
  // TypeCommon 通用
  common,
  // TypeChatBg 聊天背景
  chatbg,
  // TypeDownload 下载文件目录
  download,
  // TypeWorkplaceBanner
  workplacebanner,
  // TypeWorkplaceAppIcon
  workplaceappicon,
}

enum AppModuleType {
  base,
  login,
  applet,
}

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

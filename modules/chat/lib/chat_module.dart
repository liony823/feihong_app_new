import 'package:common/common.dart';
import 'package:auto_route/auto_route.dart';

/// Chat模块
class ChatModule {
  /// 初始化Chat模块
  static Future<void> initialize() async {
    AppLogger.i('Chat模块初始化');
  }

  /// 获取Chat模块路由配置
  static List<AutoRoute> getRoutes() {
    return [];
  }
}

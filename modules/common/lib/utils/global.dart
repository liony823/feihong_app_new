import 'package:flutter/material.dart';

/// 全局单例类，用于存储应用级别的状态和引用
class Global {
  /// 应用程序全局键
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// 获取上下文
  static BuildContext? get context => navigatorKey.currentContext;

  /// 获取当前路由名称
  static String? get currentRoute {
    String? currentPath;
    navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name;
      return true;
    });
    return currentPath;
  }

  /// 防止直接实例化
  Global._();
}

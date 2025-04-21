import 'package:common/common.dart';
import 'package:flutter/material.dart';

/// 应用主题管理类
class AppTheme {
  // 字体
  static const String fontFamily = 'NotoSansSC';

  // 主色调
  static const Color primaryLightColor = Color(0xFFFFFFFF);
  static const Color primaryDarkColor = Color(0xFF121212);

  // 品牌色
  static const Color brandColor = Color(0xFF007AFF);
  static const Color brandDarkColor = Color(0xFF0062CC);

  // 次要色调
  static const Color secondaryColor = Color(0xFF7A54FF);
  static const Color secondaryLightColor = Color(0xFFAD8DFF);
  static const Color secondaryDarkColor = Color(0xFF6A44EF);

  // 背景色
  static const Color lightBackgroundColor = Color(0xFFF6F6F6);
  static const Color darkBackgroundColor = Color(0xFF121212);

  // 文本颜色
  static const Color lightTextColor = Color(0xFF333333);
  static const Color darkTextColor = Color(0xFFFFFFFF);
  static const Color disabledTextColor = Color(0xFF9E9E9E);

  // 次要文本颜色
  static const Color lightSecondaryTextColor = Color(0xFF6C757D);
  static const Color lightSecondaryTextColor2 = Color(0xFF9E9E9E);
  static const Color lightSecondaryTextColor3 = Color(0xFFC4C4C4);
  static const Color lightSecondaryTextColor4 = Color(0xFFE0E0E0);
  static const Color darkSecondaryTextColor = Color(0xFFBDBDBD);
  static const Color darkSecondaryTextColor2 = Color(0xFF6C757D);
  static const Color darkSecondaryTextColor3 = Color(0xFF4F4F4F);
  static const Color darkSecondaryTextColor4 = Color(0xFFC4C4C4);
  static const Color lightPlaceholderTextColor = Color(0xFFC4C4C4);
  static const Color darkPlaceholderTextColor = Color(0xFF4F4F4F);

  // 警告颜色
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color warningColor = Color(0xFFFFA000);
  static const Color successColor = Color(0xFF388E3C);
  static const Color infoColor = Color(0xFF0288D1);

  // 未读消息颜色
  static const Color unreadMessageColor = Color(0xFFFF381F);

  // 分隔线颜色
  static const Color dividerColor = Color(0xFFF5F5F5);
  static const Color dividerColor2 = Color.fromARGB(255, 232, 231, 231);
  static const Color darkDividerColor = Color(0xFF424242);

  // 按钮前景色
  static const Color foregroundColor = Color(0xFFFFFFFF);
  static const Color darkForegroundColor = Color(0xFF000000);

  // 输入框背景色
  static const Color inputBgDefault = Color(0xFFF7F8FA);
  static const Color darkInputBgDefault = Color(0xFF2C2C2C);

  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.light,
      primaryColor: brandColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 119, 109, 109),
        elevation: 10,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: lightTextColor),
        surfaceTintColor: brandColor.withValues(alpha: 0.2),
        titleTextStyle: TextStyle(
          color: lightTextColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: dividerColor,
        thickness: 1.h,
        indent: 16.w,
        endIndent: 16.w,
        space: 0.w,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: lightTextColor,
        selectionColor: brandColor.withValues(alpha: .3),
        selectionHandleColor: brandColor,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return brandColor.withValues(alpha: .7);
            }
            if (states.contains(WidgetState.pressed)) {
              return brandDarkColor;
            }
            return brandColor;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return foregroundColor.withValues(alpha: .8);
            }
            return foregroundColor;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
          ),
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.all(
            brandColor.withValues(alpha: .3),
          ),
          shadowColor: WidgetStateProperty.all(brandColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          side: BorderSide(color: brandColor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
          ),
          backgroundColor: foregroundColor,
          overlayColor: brandColor.withValues(alpha: .3),
          disabledBackgroundColor: brandColor.withValues(alpha: .7),
          foregroundColor: darkForegroundColor,
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: darkForegroundColor,
          overlayColor: foregroundColor.withValues(alpha: .3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: dividerColor, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return brandColor;
        }),
        checkColor: WidgetStateProperty.all(foregroundColor),
        overlayColor: WidgetStateProperty.all(
          brandColor.withValues(alpha: .2),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: brandColor,
        circularTrackColor: dividerColor.withValues(alpha: .8),
        strokeCap: StrokeCap.round,
        strokeWidth: 4.w,
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return dividerColor;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return dividerColor;
        }),
        thumbColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return brandColor;
        }),
      ),
      cardTheme: CardThemeData(
        color: foregroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: fontFamily,
      brightness: Brightness.dark,
      primaryColor: brandColor,
      scaffoldBackgroundColor: darkBackgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkBackgroundColor,
        elevation: 10,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: darkTextColor),
      ),
      dividerTheme: DividerThemeData(
        color: dividerColor,
        thickness: 1.h,
        indent: 16.w,
        endIndent: 16.w,
        space: 0.w,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: darkTextColor,
        selectionColor: brandColor.withValues(alpha: .3),
        selectionHandleColor: brandColor,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return brandColor.withValues(alpha: .4);
            } else if (states.contains(WidgetState.pressed)) {
              return brandDarkColor;
            } else if (states.contains(WidgetState.hovered)) {
              return brandColor.withValues(alpha: .8);
            } else if (states.contains(WidgetState.focused)) {
              return brandColor;
            }
            return brandColor;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return darkForegroundColor.withValues(alpha: .5);
            } else if (states.contains(WidgetState.pressed)) {
              return brandColor;
            }
            return darkForegroundColor;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: brandColor, width: 2),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.all(
            brandColor.withValues(alpha: .3),
          ),
          shadowColor: WidgetStateProperty.all(brandColor),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          side: BorderSide(color: brandColor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: foregroundColor,
          overlayColor: brandColor.withValues(alpha: .3),
          disabledBackgroundColor: brandColor.withValues(alpha: .7),
          foregroundColor: darkForegroundColor,
          textStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: foregroundColor,
          foregroundColor: darkForegroundColor,
          disabledBackgroundColor: foregroundColor.withValues(alpha: .7),
          overlayColor: brandColor.withValues(alpha: .3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: dividerColor, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
        fillColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return foregroundColor;
        }),
        checkColor: WidgetStateProperty.all(foregroundColor),
        overlayColor: WidgetStateProperty.all(
          brandColor.withValues(alpha: .2),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: brandColor,
        circularTrackColor: dividerColor.withValues(alpha: .8),
        strokeCap: StrokeCap.round,
        strokeWidth: 4.w,
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return dividerColor;
        }),
        trackOutlineColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return dividerColor;
        }),
        thumbColor: WidgetStateProperty.resolveWith((state) {
          if (state.contains(WidgetState.selected)) {
            return brandColor;
          }
          if (state.contains(WidgetState.disabled)) {
            return foregroundColor.withValues(alpha: .7);
          }
          return brandColor;
        }),
      ),
    );
  }

  // 私有构造函数，防止实例化
  AppTheme._();
}

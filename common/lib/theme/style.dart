import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';

class Styles {
  // 品牌色 - Brand Colors
  static const brandColor = Color(0xFF0089FF); // 主色调 - teal blue
  static const brandColorLight = Color(0xFF0089FF); // 主色调 - teal blue
  static const brandColorDark = Color.fromARGB(
    221,
    0,
    136,
    255,
  ); // 主色调 - teal blue
  static const primaryLight = Color(0xFFFFFFFF); // 主色浅色
  static const primaryDark = Color(0xFF262626); // 主色深色
  static const secondaryColor = Color(0xFF000000); // 次要品牌色 - coral orange
  static const wechatGreen = Color(0xFF1AAD19); // 微信绿
  static const deepBlueColor = Color(0xFF1A4C92); // 深蓝色

  // 背景色
  static const backgroundColor = Color(0xFFFFFFFF);
  static const backgroundColorDark = Color(0xFF0D0D0D);

  // 中性色 - Neutral Colors
  static const neutral900 = Color(0xFF1D1E20); // 最深的文字颜色
  static const neutral800 = Color(0xFF2D3436); // 主要文字
  static const neutral700 = Color(0xFF4A4B4D); // 次要文字
  static const neutral600 = Color(0xFF636E72); // 辅助文字
  static const neutral500 = Color(0xFF8F9498); // 描述文字
  static const neutral400 = Color(0xFFB2BEC3); // 占位符
  static const neutral300 = Color(0xFFDFE4E8); // 边框
  static const neutral200 = Color(0xFFEEF1F4); // 分割线
  static const neutral100 = Color(0xFFF8F9FA); // 背景色
  static const neutral50 = Color(0xFFFAFBFC); // 最浅背景

  // 功能色 - Functional Colors
  static const success = Color(0xFF2ECC71); // 成功
  static const warning = Color(0xFFFDAA3F); // 警告
  static const error = Color(0xFFE74C3C); // 错误
  static const info = Color(0xFF3498DB); // 信息

  // 输入框状态 - Input States
  static const inputBgDefault = Color(0xFFF7F8FA); // 默认背景
  static const inputBgDisabled = neutral100; // 禁用背景

  // fill按钮状态 - Fill Button States
  static const fillButtonDefaultBg = brandColor; // 默认
  static const fillButtonDefaultSide = brandColor; // 默认
  static const fillButtonPressedBg = Color.fromARGB(255, 0, 114, 214); // 按下

  // outlined按钮状态 - Outlined Button States
  static const outlinedButtonDefaultBg = Colors.transparent; // 默认
  static const outlinedButtonHoverBg = Colors.transparent; // 悬停
  static const outlinedButtonPressedBg = Color(0xB3000000); // 按下
  static const outlinedButtonDisabledBg = Color(0x33000000); // 禁用

  // 文字按钮状态 - Text Button States
  static const textButtonDefault = Colors.transparent; // 默认
  static const textButtonHover = Colors.transparent; // 悬停
  static const textButtonPressed = Color(0xB3000000); // 按下
  static const textButtonDisabled = Color(0x33000000); // 禁用

  // 阴影 - Shadows
  static const shadowSmall = Color(0x0A000000); // 小阴影
  static const shadowMedium = Color(0x1A000000); // 中阴影
  static const shadowLarge = Color(0x29000000); // 大阴影

  // 遮罩 - Overlays
  static const overlay30 = Color(0x4D000000); // 30% 遮罩
  static const overlay50 = Color(0x80000000); // 50% 遮罩
  static const overlay70 = Color(0xB3000000); // 70% 遮罩

  // 按钮高度 - Button Heights
  static final buttonHeight = 36.h;
  static final buttonMediumHeight = 42.h;
  static final buttonLargeHeight = 48.h;

  // 输入框高度 - Input Heights
  static final inputHeight = 36.h;
  static final inputMediumHeight = 42.h;
  static final inputLargeHeight = 48.h;

  // 分割线 - Divider
  static const dividerColor = Color(0xFFEDEDED);

  static List<BoxShadow> shadow = [
    BoxShadow(color: shadowMedium, blurRadius: 10, offset: Offset(0, 10)),
  ];
}

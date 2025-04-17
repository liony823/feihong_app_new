part of 'extensions.dart';

/// theme 主题颜色扩展
/// `context.colors.primary` 可以这样使用
extension ThemeColorsExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _ThemeColors get colors => _ThemeColors(
        primary: _primaryColor,
        primaryLight: _primaryColorLight,
        primaryDark: _primaryColorDark,
        canvas: _canvasColor,
        scaffoldBackground: _scaffoldBackgroundColor,
        card: _cardColor,
        divider: _dividerColor,
        focus: _focusColor,
        hover: _hoverColor,
        highlight: _highlightColor,
        splash: _splashColor,
        unselectedWidget: _unselectedWidgetColor,
        disabled: _disabledColor,
        secondaryHeader: _secondaryHeaderColor,
        dialogBackground: _dialogBackgroundColor,
        indicator: _indicatorColor,
        hint: _hintColor,
        scheme: _colorScheme,
        shadow: _shadowColor,
      );

  // 获取当前主题
  ThemeData get _theme => Theme.of(this);

  // 获取颜色方案
  ColorScheme get _colorScheme => _theme.colorScheme;

  // 主要颜色
  Color get _primaryColor => _theme.primaryColor;
  Color get _primaryColorLight => _theme.primaryColorLight;
  Color get _primaryColorDark => _theme.primaryColorDark;

  // 次要颜色
  Color get _secondaryHeaderColor => _theme.secondaryHeaderColor;

  // 其他主题颜色
  Color get _canvasColor => _theme.canvasColor;
  Color get _scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;
  Color get _cardColor => _theme.cardColor;
  Color get _dividerColor => _theme.dividerColor;
  Color get _focusColor => _theme.focusColor;
  Color get _hoverColor => _theme.hoverColor;
  Color get _highlightColor => _theme.highlightColor;
  Color get _splashColor => _theme.splashColor;
  Color get _unselectedWidgetColor => _theme.unselectedWidgetColor;
  Color get _disabledColor => _theme.disabledColor;
  Color get _dialogBackgroundColor => _theme.dialogBackgroundColor;
  Color get _indicatorColor => _theme.indicatorColor;
  Color get _hintColor => _theme.hintColor;
  Color get _shadowColor => _theme.shadowColor;
}

/// Helper class that allows to use a color like:
/// `context.colors.primary`
class _ThemeColors {
  const _ThemeColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.canvas,
    required this.shadow,
    required this.scaffoldBackground,
    required this.card,
    required this.divider,
    required this.focus,
    required this.hover,
    required this.highlight,
    required this.splash,
    required this.unselectedWidget,
    required this.disabled,
    required this.secondaryHeader,
    required this.dialogBackground,
    required this.indicator,
    required this.hint,
    required this.scheme,
  });

  /// See [ThemeData.primaryColor].
  final Color primary;

  /// See [ThemeData.primaryColorLight].
  final Color primaryLight;

  /// See [ThemeData.primaryColorDark].
  final Color primaryDark;

  /// See [ThemeData.canvasColor].
  final Color canvas;

  /// See [ThemeData.shadowColor].
  final Color shadow;

  /// See [ThemeData.scaffoldBackgroundColor].
  final Color scaffoldBackground;

  /// See [ThemeData.cardColor].
  final Color card;

  /// See [ThemeData.dividerColor].
  final Color divider;

  /// See [ThemeData.focusColor].
  final Color focus;

  /// See [ThemeData.hoverColor].
  final Color hover;

  /// See [ThemeData.highlightColor].
  final Color highlight;

  /// See [ThemeData.splashColor].
  final Color splash;

  /// See [ThemeData.unselectedWidgetColor].
  final Color unselectedWidget;

  /// See [ThemeData.disabledColor].
  final Color disabled;

  /// See [ThemeData.secondaryHeaderColor].
  final Color secondaryHeader;

  /// See [ThemeData.dialogBackgroundColor].
  final Color dialogBackground;

  /// See [ThemeData.indicatorColor].
  final Color indicator;

  /// See [ThemeData.hintColor].
  final Color hint;

  /// See [ThemeData.colorScheme].
  final ColorScheme scheme;
}

 part of 'extensions.dart';

/// String 字符串扩展
extension StringExtensions on String {
  /// 每个单词都大写
  /// `hello world` becomes `Hello World`.
  String capitalize() {
    return split(' ').map((e) => e.capitalizeFirst()).join(' ');
  }

  /// 首字母大写
  /// `hello world` becomes `Hello world`.
  String capitalizeFirst() {
    if (length == 0) return '';
    if (length == 1) return toUpperCase();
    return substring(0, 1).toUpperCase() + substring(1);
  }

  /// 是否 bool
  ///
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  /// Example:
  /// ```dart
  /// print('true'.isBool()); // true
  /// print('false'.isBool()); // true
  /// print('TRUE'.isBool()); // false
  /// print('TRUE'.isBool(caseSensitive: false)); // true
  /// print('FALSE'.isBool(caseSensitive: false)); // true
  /// print('NO'.isBool()); // false
  /// print('YES'.isBool()); // false
  /// print('0'.isBool()); // false
  /// print('1'.isBool()); // false
  /// ```
  bool isBool({bool caseSensitive = true}) =>
      bool.tryParse(this, caseSensitive: caseSensitive) != null;

  /// 转 bool
  ///
  /// Throws if the string is not a Boolean.
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  bool toBool({bool caseSensitive = true}) =>
      bool.parse(this, caseSensitive: caseSensitive);

  /// 是否数字
  ///
  /// print('2021'.isNum()); // true
  /// print('3.14'.isNum()); // true
  /// print('  3.14 \xA0'.isNum()); // true
  /// print('0.'.isNum()); // true
  /// print('.0'.isNum()); // true
  /// print('-1.e3'.isNum()); // true
  /// print('1234E+7'.isNum()); // true
  /// print('+.12e-9'.isNum()); // true
  /// print('-NaN'.isNum()); // true
  /// print('0xFF'.isNum()); // true
  /// print(double.infinity.toString().isNum()); // true
  /// print('1f'.isNum()); // false
  bool isNum() => num.tryParse(this) != null;

  /// 转数字
  num toNum() => num.parse(this);

  /// 是否 double
  bool isDouble() => double.tryParse(this) != null;

  /// 转 double
  double toDouble() => double.parse(this);

  /// 是否 int
  bool isInt() => int.tryParse(this) != null;

  /// 转 int
  int toInt() => int.parse(this);

  /// 生成 Color
  Color get toColor {
    return Color(int.parse(this, radix: 16) | 0xFF000000);
  }

  /// 生成 MaterialColor
  Color get toMaterialColor {
    Color color = toColor;

    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  /// 清除所有空格
  String removeAllWhitespace() => replaceAll(' ', '');

  /// 正则检查匹配
  bool hasMatch(String pattern) => RegExp(pattern).hasMatch(this);

  /// 清除 html 标签
  String get clearHtml {
    return replaceAll(RegExp(r'<[^>]*>'), '');
  }

  /// 判断字符串是否为空或只包含空白字符
  bool get isNullOrEmpty => trim().isEmpty;

  /// 判断字符串是否不为空且不只包含空白字符
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// 判断字符串是否是有效的电子邮件
  bool get isValidEmail {
    return Regex.EMAIL_PATTERN.hasMatch(this);
  }

  /// 判断字符串是否是有效的手机号码（简单验证）
  bool get isValidPhone {
    return Regex.PHONE_PATTERN.hasMatch(this);
  }

  /// 将字符串转换为驼峰命名
  String get toCamelCase {
    if (isNullOrEmpty) return this;
    List<String> words = split(RegExp(r'[_\s-]'));
    String result = words[0].toLowerCase();
    for (int i = 1; i < words.length; i++) {
      result += words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
    return result;
  }

  /// 截断字符串到指定长度，并添加省略号
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }

  /// 获取字符串的MD5哈希（简化版，仅作为示例）
  String get md5Hash {
    return hashCode.toString();
  }

  /// 修复自动换行
  String fixAutoLines() {
    return Characters(this).join('\u{200B}');
  }

  /// 将字符串转换为Locale
  Locale get toLocale {
    return Locale(this);
  }

  /// 将字符串转换为AppBar标题
  Widget get appBarTitle => Text(this)
      .fontSize(32.sp)
      .fontWeight(FontWeight.w600)
      .paddingHorizontal(16.w)
      .paddingVertical(8.w);

  /// 将字符串转换为AppBar文本
  Widget get appBarText => Text(
        this,
      )
          .fontSize(18.sp)
          .fontWeight(FontWeight.w500)
          .fontFamily(AppTheme.fontFamily);

  DateTime get toDateTime {
    return DateTime.parse(this);
  }

  SvgView get toSvg {
    return SvgView(icon: this);
  }

  ImageView get toImage {
    return ImageView(name: this);
  }
}

class SvgView extends StatelessWidget {
  SvgView({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.color,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  });

  final String icon;
  double? width;
  double? height;
  BoxFit? fit;
  Color? color;
  AlignmentGeometry? alignment;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width ?? 24.w,
      height: height ?? 24.w,
      fit: fit ?? BoxFit.contain,
      alignment: alignment ?? Alignment.center,
      theme: SvgTheme(
        fontSize: 16.sp,
        currentColor: color ?? AppTheme.primaryDarkColor,
      ),
    );
  }
}

// ignore: must_be_immutable
class ImageView extends StatelessWidget {
  ImageView({
    super.key,
    required this.name,
    this.width,
    this.height,
    this.color,
    this.opacity = 1,
    this.fit,
    this.onTap,
    this.onDoubleTap,
  });
  final String name;
  double? width;
  double? height;
  Color? color;
  double opacity;
  BoxFit? fit;
  Function()? onTap;
  Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) =>
      Image.asset(name, width: width, height: height, color: color, fit: fit);
}

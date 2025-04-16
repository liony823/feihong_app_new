import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';


extension NumberFormatExt on double {
  String get formatCurrency =>
      NumberFormat.compactSimpleCurrency(locale: "ZH").format(this);
}

extension TextStyleExt on TextStyle {
  TextStyle withOpacity(double opacity) =>
      copyWith(color: color?.withValues(alpha: opacity));
}

extension StrutStyleExt on Text {
  Text withStrutStyle() =>
      copyWith(strutStyle: StrutStyle(height: 1.1, forceStrutHeight: true));
}

extension SubjectExt<T> on Subject<T> {
  T addSafely(T data) {
    if (!isClosed) sink.add(data);

    return data;
  }
}

extension TextEdCtrlExt on TextEditingController {
  void fixed63Length() {
    addListener(() {
      if (text.length == 63 && Platform.isAndroid) {
        text += " ";
        selection = TextSelection.fromPosition(
          TextPosition(
            affinity: TextAffinity.downstream,
            offset: text.length - 1,
          ),
        );
      }
    });
  }
}

extension StrExt on String {
  Locale get toLocale {
    return Locale(this);
  }

  Text get toText {
    return Text(this);
  }

  SvgView get toSvg {
    return SvgView(icon: this);
  }

  ImageView get toImage {
    return ImageView(name: this);
  }

  String fixAutoLines() {
    return Characters(this).join('\u{200B}');
  }
}

extension IconDataExt on IconData {
  CupertinoButtonView toCupertinoIconButton({required VoidCallback onPressed}) {
    return CupertinoButtonView(
      onPressed: onPressed,
      child: Icon(this, size: 16.w, color: Styles.primaryDark),
    );
  }
}

extension SpaceExt on int {
  SizedBox get horizontalSpace => ScreenUtil().setHorizontalSpacing(this);
  SizedBox get verticalSpace => ScreenUtil().setVerticalSpacing(this);
}

extension TextExt on String {
  Widget get appBarTitle => Text(this)
      .fontSize(32.sp)
      .fontWeight(FontWeight.w600)
      .paddingHorizontal(16.w)
      .paddingVertical(8.w);

  Widget get appBarText => Text(
    this,
  ).fontSize(18.sp).fontWeight(FontWeight.w500).fontFamily(AppTheme.fontFamily);
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
        currentColor: color ?? Styles.primaryDark,
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

// ignore: must_be_immutable
class CupertinoButtonView extends StatelessWidget {
  CupertinoButtonView({
    super.key,
    required this.child,
    required this.onPressed,
    this.padding,
  });
  final Widget child;
  VoidCallback onPressed;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) =>
      CupertinoButton(padding: padding, onPressed: onPressed, child: child);
}

extension IntExt on int {
  int ensureTenDigits() {
    String numberStr = toString();

    if (numberStr.length == 10) {
      return this;
    } else if (numberStr.length > 10) {
      return int.parse(numberStr.substring(0, 10));
    } else {
      return int.parse(numberStr.padLeft(10, '0'));
    }
  }
}

extension StringExt on String {
  String splitStringEveryNChars({int n = 3, String separator = ' '}) {
    RegExp regExp = RegExp('.{1,$n}');
    Iterable<Match> matches = regExp.allMatches(this);
    List<String> parts = matches.map((match) => match.group(0)!).toList();

    return parts.join(separator);
  }
}

extension DateTimeExt on DateTime {
  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1000;
}

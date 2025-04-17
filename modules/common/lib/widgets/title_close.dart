import 'package:common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleClose extends StatelessWidget {
  const TitleClose({
    super.key,
    required this.title,
    this.style,
    this.alignment = Alignment.center,
    this.showClose = true,
    this.closeIconColor = Colors.black,
    this.closeIconSize,
    this.closeIcon,
    this.onClose,
  });
  final String title;
  final TextStyle? style;
  final Alignment alignment;
  final bool showClose;
  final Color? closeIconColor;
  final double? closeIconSize;
  final IconData? closeIcon;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final closeIcon = this.closeIcon ?? Icons.close_rounded;
    final closeIconSize = this.closeIconSize ?? 18.r;
    final closeIconColor = this.closeIconColor ?? Colors.black;
    final textStyle =
        style ?? TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);

    return Stack(
      children: [
        Align(
          alignment: alignment,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            child: Text(title, style: textStyle),
          ),
        ),
        if (showClose)
          Positioned(
            right: 0,
            top: 0,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onClose,
              child: Icon(
                closeIcon,
                size: closeIconSize,
                color: closeIconColor,
              ),
            ),
          ),
      ],
    );
  }
}

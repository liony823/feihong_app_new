import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class InputPhoneCode extends StatelessWidget {
  final VoidCallback onOpenPicker;
  final String areaCode;
  const InputPhoneCode({
    super.key,
    required this.onOpenPicker,
    required this.areaCode,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onOpenPicker,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          16.horizontalSpace,
          Text(areaCode)
              .textColor(Styles.neutral900)
              .fontSize(14.sp)
              .fontWeight(FontWeight.w500),
          Icon(EvaIcons.chevron_down_outline),
          Container(width: 1.w, height: 20.h, color: Styles.dividerColor),
          8.horizontalSpace,
        ],
      ),
    );
  }
}

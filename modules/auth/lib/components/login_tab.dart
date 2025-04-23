import 'package:common/common.dart';
import 'package:flutter/material.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Stack(
        children: [
          Positioned(
            bottom: 5.w,
            left: 0.w,
            child: buildLine(),
          ),
          Text(title)
              .fontSize(20.sp)
              .textColor(AppTheme.lightTextColor)
              .fontWeight(FontWeight.w500),
        ],
      ),
    );
  }

  Widget buildLine() {
    return Container(
      width: 56.w,
      height: 6.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppTheme.brandColor, AppTheme.primaryLightColor],
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
    );
  }
}

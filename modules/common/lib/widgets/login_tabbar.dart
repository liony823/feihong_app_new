import 'package:common/common.dart';
import 'package:flutter/material.dart';

import 'rectdicator.dart';

class LoginTabBar extends StatefulWidget {
  const LoginTabBar({super.key, this.controller, required this.tabs});

  final TabController? controller;
  final List<String> tabs;

  @override
  State<LoginTabBar> createState() => _LoginTabBarState();
}

class _LoginTabBarState extends State<LoginTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TabBar(
        controller: widget.controller,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        labelPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.w),
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        dividerHeight: 0,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          color: AppTheme.lightSecondaryTextColor,
          fontFamily: AppTheme.fontFamily,
        ),
        labelStyle: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          color: AppTheme.lightTextColor,
          fontFamily: AppTheme.fontFamily,
        ),
        indicator: RectIndicator(
          gradient: LinearGradient(
            colors: [AppTheme.brandColor, AppTheme.primaryLightColor],
          ),
          leftPadding: 2.w,
          bottomPadding: 12.h,
          width: 56.w,
          height: 6.h,
        ),
        tabs: widget.tabs.map((e) => Text(e)).toList(),
      ),
    );
  }
}

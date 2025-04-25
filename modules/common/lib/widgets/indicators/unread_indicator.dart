import 'package:common/common.dart';
import 'package:flutter/material.dart';

class UnreadIndicator extends StatelessWidget {
  final int unreadCount;
  const UnreadIndicator({
    super.key,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    if (unreadCount == 0) return const SizedBox.shrink();
    return Badge(
      textColor: Colors.white,
      textStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: AppTheme.unreadMessageColor,
      label: Text(
        switch (unreadCount) {
          > 99 => '99+',
          _ => '$unreadCount',
        },
      ),
    );
  }
}

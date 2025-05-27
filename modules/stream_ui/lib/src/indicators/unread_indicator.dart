import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';

class UnreadIndicator extends StatelessWidget {
  final int unreadCount;
  const UnreadIndicator({
    super.key,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = StreamChatTheme.of(context);
    if (unreadCount == 0) return const SizedBox.shrink();
    return Badge(
      textColor: Colors.white,
      textStyle: theme.textTheme.footnoteBold,
      backgroundColor: theme.channelPreviewTheme.unreadCounterColor,
      label: Text(
        switch (unreadCount) {
          > 99 => '99+',
          _ => '$unreadCount',
        },
      ),
    );
  }
}

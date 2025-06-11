import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';

class StreamUnreadIndicator extends StatelessWidget {
  final int unreadCount;
  final bool isMuted;
  const StreamUnreadIndicator({
    super.key,
    required this.unreadCount,
    this.isMuted = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = StreamChatTheme.of(context);
    if (unreadCount == 0) return const SizedBox.shrink();
    return Badge(
      textColor: Colors.white,
      textStyle: theme.textTheme.footnoteBold,
      backgroundColor: isMuted ? theme.colorTheme.disabled : theme.channelPreviewTheme.unreadCounterColor,
      label: Text(
        switch (unreadCount) {
          > 99 => '99+',
          _ => '$unreadCount',
        },
      ),
    );
  }
}

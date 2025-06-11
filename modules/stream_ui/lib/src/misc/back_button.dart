import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:stream_ui/stream_ui.dart';

/// {@template streamBackButton}
/// A custom back button implementation
/// {@endtemplate}
class StreamBackButton extends StatelessWidget {
  /// {@macro streamBackButton}
  const StreamBackButton({
    super.key,
    this.onPressed,
    this.unreadCount,
    this.channelId,
  });

  /// Callback for when button is pressed
  final VoidCallback? onPressed;

  /// Unread count
  final int? unreadCount;

  /// Channel ID used to retrieve unread count
  final String? channelId;

  @override
  Widget build(BuildContext context) {
    final theme = StreamChatTheme.of(context);

    Widget icon = StreamSvgIcon(
      size: 24,
      icon: StreamSvgIcons.left,
      color: theme.colorTheme.textHighEmphasis,
    );

    if (unreadCount != null && unreadCount! > 0) {
      icon = Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          icon,
          PositionedDirectional(
            top: -4,
            start: 12,
            child: StreamUnreadIndicator(unreadCount: unreadCount ?? 0),
          ),
        ],
      );
    }

    return IconButton(
      icon: icon,
      onPressed: () {
        if (onPressed case final onPressed?) {
          return onPressed();
        }

        Navigator.maybePop(context);
      },
    );
  }
}

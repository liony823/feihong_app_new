import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';

/// {@template streamSendingIndicator}
/// Shows the sending status of a message.
/// {@endtemplate}
class StreamSendingIndicator extends StatelessWidget {
  /// {@macro streamSendingIndicator}
  const StreamSendingIndicator({
    super.key,
    required this.message,
    required this.cId,
    this.isMessageRead = false,
    this.size = 12,
  });

  /// Message for sending indicator
  final WKMsg message;

  final String cId;

  /// Flag if message is read
  final bool isMessageRead;

  /// Size for message
  final double? size;

  @override
  Widget build(BuildContext context) {
    if (isMessageRead) {
      return StreamSvgIcon(
        size: size,
        icon: StreamSvgIcons.checkAll,
        color: StreamChatTheme.of(context).colorTheme.accentPrimary,
      );
    }
    // if (message.state.isCompleted) {
    //   return StreamSvgIcon(
    //     size: size,
    //     icon: StreamSvgIcons.check,
    //     color: StreamChatTheme.of(context).colorTheme.textLowEmphasis,
    //   );
    // }
    if (message.fromUID == cId) {
      return StreamSvgIcon(
        size: size,
        icon: StreamSvgIcons.time,
        color: StreamChatTheme.of(context).colorTheme.textLowEmphasis,
      );
    }
    return const Empty();
  }
}

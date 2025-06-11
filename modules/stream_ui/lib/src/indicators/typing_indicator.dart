import 'package:common/common.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wukongimfluttersdk/type/const.dart';

/// {@template streamTypingIndicator}
/// Shows the list of user who are actively typing.
/// {@endtemplate}
class StreamTypingIndicator extends StatelessWidget {
  /// {@macro streamTypingIndicator}
  const StreamTypingIndicator({
    super.key,
    required this.channelState,
    this.alternativeWidget,
    this.style,
    this.padding = EdgeInsets.zero,
    this.parentId,
  });

  final ChannelState channelState;

  /// Style of the text widget
  final TextStyle? style;

  /// The widget to build when no typing is happening
  final Widget? alternativeWidget;

  /// The padding of this widget
  final EdgeInsets padding;

  /// Id of the parent message in case of a thread
  final String? parentId;

  @override
  Widget build(BuildContext context) {
    final altWidget = alternativeWidget ?? const Empty();

    return AnimatedSwitcher(
      layoutBuilder: (currentChild, previousChildren) => Stack(
        children: <Widget>[
          ...previousChildren,
          if (currentChild != null) currentChild,
        ],
      ),
      duration: const Duration(milliseconds: 300),
      child: (channelState.typingStartTime != null &&
              channelState.typingStartTime! > 0)
          ? Padding(
              padding: padding,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    'lib/assets/animations/typing_dots.json',
                    package: 'stream_ui',
                    height: 4,
                  ),
                  Flexible(
                    child: Text(
                      channelState.conversationMsg.channelType ==
                              WKChannelType.group
                          ? context.t.msg.userIsTyping(
                              name: channelState.typingUserName!)
                          : context.t.msg.ohterTyping,
                      maxLines: 1,
                      style: style,
                    ),
                  ),
                ],
              ),
            )
          : altWidget,
    );
  }
}

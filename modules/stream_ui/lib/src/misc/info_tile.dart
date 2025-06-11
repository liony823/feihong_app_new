import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:stream_ui/stream_ui.dart';

class StreamInfoTile extends StatelessWidget {
  const StreamInfoTile({
    super.key,
    required this.message,
    required this.child,
    required this.showMessage,
    this.tileAnchor,
    this.childAnchor,
    this.textStyle,
    this.backgroundColor,
  });

  /// String to display
  final String message;

  final Widget child;

  final bool showMessage;

  final Alignment? tileAnchor;

  final Alignment? childAnchor;

  final TextStyle? textStyle;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final chatThemeData = StreamChatTheme.of(context);
    return PortalTarget(
      visible: showMessage,
      anchor: Aligned(
        follower: tileAnchor ?? Alignment.topCenter,
        target: childAnchor ?? Alignment.bottomCenter,
      ),
      portalFollower: Container(
        height: 25,
        color: backgroundColor ??
            // ignore: deprecated_member_use
            chatThemeData.colorTheme.textLowEmphasis.withOpacity(0.9),
        child: Center(
          child: Text(
            message,
            style: textStyle ??
                chatThemeData.textTheme.body.copyWith(
                  color: Colors.white,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      child: child,
    );
  }
}

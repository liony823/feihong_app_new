import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/type/const.dart';

class StreamChannelHeader extends StatelessWidget
    implements PreferredSizeWidget {
  /// Instantiate a new ChannelHeader
  const StreamChannelHeader({
    super.key,
    required this.channel,
    this.externalUnreadCount = 0,
    this.showBackButton = true,
    this.onBackPressed,
    this.onTitleTap,
    this.onImageTap,
    this.showTypingIndicator = true,
    this.showConnectionsStateTile = false,
    this.connectionsState = WKConnectStatus.connecting,
    this.title,
    this.subtitle,
    this.leading,
    this.actions,
    this.backgroundColor,
    this.bottomBorderColor,
    this.elevation = 1,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  });

  final WKChannel channel;

  final int externalUnreadCount;

  /// Defaults to [true]
  final bool showBackButton;

  /// The action to perform when the back button is pressed
  /// By default it calls [Navigator.pop].
  final VoidCallback? onBackPressed;

  /// The action to perform when header is tapped
  final VoidCallback? onTitleTap;

  /// The action to perform when image is tapped
  final VoidCallback? onImageTap;

  // Whether to show the typing indicator
  /// Defaults to [true]
  final bool showTypingIndicator;

  /// Whether to show the connections state tile
  final bool showConnectionsStateTile;

  /// The connections state to show
  /// Defaults to [WKConnectStatus.connecting]
  final int connectionsState;

  /// Title widget
  final Widget? title;

  /// Subtitle widget
  final Widget? subtitle;

  /// Leading widget
  final Widget? leading;

  final List<Widget>? actions;

  final Color? backgroundColor;

  final Color? bottomBorderColor;

  final double elevation;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final channelHeaderTheme = StreamChannelHeaderTheme.of(context);

    final leadingWidget = leading ??
        (showBackButton
            ? StreamBackButton(
                onPressed: onBackPressed,
                unreadCount: externalUnreadCount,
              )
            : const SizedBox());

    var showStatus = true;

    switch (connectionsState) {
      case WKConnectStatus.success:
        showStatus = false;
        break;
      case WKConnectStatus.syncCompleted:
        showStatus = false;
        break;
    }

    final theme = Theme.of(context);

    final effectiveCenterTitle = getEffectiveCenterTitle(
      Theme.of(context),
      actions: actions,
    );

    WKUIConversationMsg msg = WKUIConversationMsg();
    msg.channelID = channel.channelID;
    msg.channelType = channel.channelType;

    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: bottomBorderColor ??
                      channelHeaderTheme.bottomBorderColor ??
                      AppTheme.dividerColor2))),
      child: StreamInfoTile(
        showMessage: showConnectionsStateTile && showStatus,
        message: context.t.c.connectStatus[connectionsState],
        child: AppBar(
          toolbarTextStyle: theme.textTheme.bodyMedium,
          titleTextStyle: theme.textTheme.titleLarge,
          systemOverlayStyle: theme.brightness == Brightness.dark
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark,
          elevation: elevation,
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: InkWell(
            onTap: onTitleTap,
            child: SizedBox(
              height: preferredSize.height,
              child: Row(
                spacing: 8.w,
                children: [
                  leadingWidget,
                  StreamChannelAvatar(
                    channel: channel,
                    constraints:
                        BoxConstraints.tightFor(width: 42.w, height: 42.w),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 0.5.sw),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: effectiveCenterTitle
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.stretch,
                        children: [
                          title ??
                              StreamChannelName(
                                channelState: ChannelState(msg),
                                textStyle: channelHeaderTheme.titleStyle,
                              ),
                          const SizedBox(height: 2),
                          subtitle ?? StreamChannelInfo()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: actions,
        ),
      ),
    );
  }
}

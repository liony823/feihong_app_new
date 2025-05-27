import 'package:common/common.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/entity/msg.dart';
import 'package:wukongimfluttersdk/entity/reminder.dart';
import 'package:wukongimfluttersdk/wkim.dart';

/// A widget that displays a channel preview.
///
/// This widget is intended to be used as a Tile in [StreamChannelListView]
///
/// It shows the last message of the channel, the last message time, the unread
/// message count, the typing indicator, the sending indicator and the channel
/// avatar.
///
/// See also:
/// * [StreamChannelAvatar]
/// * [StreamChannelName]
class ChannelListTile extends StatelessWidget {
  /// Creates a new instance of [ChannelListTile] widget.
  ChannelListTile({
    super.key,
    required this.channelState,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.tileColor,
    this.visualDensity = VisualDensity.compact,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 8),
    this.unreadIndicatorBuilder,
    this.sendingIndicatorBuilder,
    this.selected = false,
    this.selectedTileColor,
  });

  final ChannelState channelState;

  /// A widget to display before the title.
  final Widget? leading;

  /// The primary content of the list tile.
  final Widget? title;

  /// Additional content displayed below the title.
  final Widget? subtitle;

  /// A widget to display at the end of tile.
  final Widget? trailing;

  /// Called when the user taps this list tile.
  final GestureTapCallback? onTap;

  /// Called when the user long-presses on this list tile.
  final GestureLongPressCallback? onLongPress;

  /// {@template flutter.material.ListTile.tileColor}
  /// Defines the background color of `ListTile`.
  ///
  /// When the value is null,
  /// the `tileColor` is set to [ListTileTheme.tileColor]
  /// if it's not null and to [Colors.transparent] if it's null.
  /// {@endtemplate}
  final Color? tileColor;

  /// Defines how compact the list tile's layout will be.
  ///
  /// {@macro flutter.material.themedata.visualDensity}
  ///
  /// See also:
  ///
  ///  * [ThemeData.visualDensity], which specifies the [visualDensity] for all
  ///    widgets within a [Theme].
  final VisualDensity visualDensity;

  /// The tile's internal padding.
  ///
  /// Insets a [ListTile]'s contents: its [leading], [title], [subtitle],
  /// and [trailing] widgets.
  ///
  /// If null, `EdgeInsets.symmetric(horizontal: 16.0)` is used.
  final EdgeInsetsGeometry contentPadding;

  /// The widget builder for the unread indicator.
  final WidgetBuilder? unreadIndicatorBuilder;

  /// The widget builder for the sending indicator.
  ///
  /// `Message` is the last message in the channel, Use it to determine the
  /// status using [Message.status].
  final Widget Function(BuildContext, ChannelState)? sendingIndicatorBuilder;

  /// True if the tile is in a selected state.
  final bool selected;

  /// The color of the tile in selected state.
  final Color? selectedTileColor;

  /// Creates a copy of this tile but with the given fields replaced with
  /// the new values.
  ChannelListTile copyWith({
    Key? key,
    ChannelState? channelState,
    Widget? leading,
    Widget? title,
    Widget? subtitle,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VisualDensity? visualDensity,
    EdgeInsetsGeometry? contentPadding,
    bool? selected,
    Widget Function(BuildContext, ChannelState)? sendingIndicatorBuilder,
    Color? tileColor,
    Color? selectedTileColor,
    WidgetBuilder? unreadIndicatorBuilder,
    Widget? trailing,
  }) {
    return ChannelListTile(
      key: key ?? this.key,
      channelState: channelState ?? this.channelState,
      leading: leading ?? this.leading,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      onTap: onTap ?? this.onTap,
      onLongPress: onLongPress ?? this.onLongPress,
      visualDensity: visualDensity ?? this.visualDensity,
      contentPadding: contentPadding ?? this.contentPadding,
      sendingIndicatorBuilder:
          sendingIndicatorBuilder ?? this.sendingIndicatorBuilder,
      tileColor: tileColor ?? this.tileColor,
      trailing: trailing ?? this.trailing,
      unreadIndicatorBuilder:
          unreadIndicatorBuilder ?? this.unreadIndicatorBuilder,
      selected: selected ?? this.selected,
      selectedTileColor: selectedTileColor ?? this.selectedTileColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final channelPreviewTheme = StreamChannelPreviewTheme.of(context);
    final msg = channelState.conversationMsg;
    final channel = channelState.channel;

    if (channel != null) {
      final leading = this.leading ??
          ChannelAvatar(
            channel: channel,
          );

      final title = this.title ??
          ChannelName(
            channelState: channelState,
            textStyle: channelPreviewTheme.titleStyle,
          );

      final subtitle = this.subtitle ??
          ChannelListTileSubtitle(
            channelState: channelState,
            textStyle: channelPreviewTheme.subtitleStyle,
          );

      final trailing = this.trailing ??
          ChannelLastMessageDate(
            conversationMsg: msg,
            textStyle: channelPreviewTheme.lastMessageAtStyle,
          );

      return AnimatedOpacity(
        opacity: channel.mute == 1 ? 0.5 : 1,
        duration: const Duration(milliseconds: 300),
        child: ListTile(
          onTap: onTap,
          onLongPress: onLongPress,
          visualDensity: visualDensity,
          contentPadding: contentPadding,
          leading: leading,
          tileColor: tileColor,
          selected: selected,
          selectedTileColor: selectedTileColor ??
              StreamChatTheme.of(context).colorTheme.borders,
          title: Row(
            children: [
              Expanded(child: title),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: sendingIndicatorBuilder?.call(context, channelState) ??
                    SendingIndicatorBuilder(
                      message: msg,
                      cid: SpHelper.uid,
                    ),
              ),
              trailing
            ],
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: subtitle,
                ),
              ),
              unreadIndicatorBuilder?.call(context) ??
                  UnreadIndicator(unreadCount: msg.unreadCount)
            ],
          ),
        ),
      );
    }
    return Empty();
  }
}

/// A widget that displays the channel last message date.
class ChannelLastMessageDate extends StatelessWidget {
  /// Creates a new instance of the [ChannelLastMessageDate] widget.
  const ChannelLastMessageDate({
    super.key,
    required this.conversationMsg,
    this.textStyle,
  });

  /// The channel to display the last message date for.
  final WKUIConversationMsg conversationMsg;

  /// The style of the text displayed
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: conversationMsg.getWkMsg(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int timestamp = conversationMsg.lastMsgTimestamp;
          if (snapshot.data != null &&
              snapshot.data?.wkMsgExtra?.editedAt != 0) {
            timestamp = snapshot.data!.wkMsgExtra!
                .editedAt; // 编辑时间优先显示，因为编辑时间是最新的，所以这里使用editedAt而不是timestamp，timestamp是发送时间，editedAt是编辑时间，editedAt是在发送后才有的，所以editedAt是更
          }
          return StreamTimestamp(
            date: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
            style: textStyle,
          );
        }
        return Empty();
      });
}

/// A widget that displays the subtitle for [ChannelListTile].
class ChannelListTileSubtitle extends StatelessWidget {
  /// Creates a new instance of [StreamChannelListTileSubtitle] widget.
  const ChannelListTileSubtitle({
    super.key,
    required this.channelState,
    this.textStyle,
  });

  /// The channel to create the subtitle from.
  final ChannelState channelState;

  /// The style of the text displayed
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final conversationMsg = channelState.conversationMsg;
    final getReminders = conversationMsg.getReminderList();
    final getRemoteMsgExtra = conversationMsg.getRemoteMsgExtra();
    final getChannel = conversationMsg.getWkChannel();
    String draft = "";
    String approveContent = "";
    bool mention = false;

    return StreamTypingIndicator(
      channelState: channelState,
      style: textStyle,
      alternativeWidget: FutureBuilder(
          future: getChannel,
          builder: (context, channelSnapshot) {
            if (channelSnapshot.hasData) {
              final channel = channelSnapshot.data;
              return FutureBuilder(
                  future: getReminders,
                  builder: (context, reminderSnapshot) {
                    if (reminderSnapshot.hasData) {
                      final reminders = reminderSnapshot.data;
                      if (reminders != null && reminders.isNotEmpty) {
                        for (final reminder in reminders) {
                          if (!mention &&
                              reminder.type ==
                                  WKMentionType.wkReminderTypeMentionMe &&
                              reminder.done == 0) {
                            // 存在 @
                            mention = true;
                          }
                          if (reminder.type ==
                                  WKMentionType.wkApplyJoinGroupApprove &&
                              reminder.done == 0) {
                            // 存在 群申请
                            approveContent = context.t.msg.applyJoinGroup;
                          }
                        }
                      }
                    }

                    if (getRemoteMsgExtra != null) {
                      draft = getRemoteMsgExtra.draft;
                    }

                    Widget child = ChannelLastMessageText(
                      channelState: channelState,
                      textStyle: textStyle,
                    );

                    if (draft.isNotEmpty) {
                      child = Text(
                        draft,
                        style: TextStyle(
                          color: StreamChatTheme.of(context)
                              .colorTheme
                              .accentPrimary,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    }

                    return Row(
                      children: [
                        if (mention)
                          Text(context.t.msg.lastMsgRemind,
                              style: TextStyle(
                                color: StreamChatTheme.of(context)
                                    .colorTheme
                                    .accentPrimary,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              )),
                        child,
                        if (approveContent.isNotEmpty)
                          Text(
                            approveContent,
                            style: TextStyle(
                              color: StreamChatTheme.of(context)
                                  .colorTheme
                                  .accentPrimary,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        if (channelState.isCalling == 1)
                          Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Icon(
                                Icons.call,
                                color: StreamChatTheme.of(context)
                                    .colorTheme
                                    .accentPrimary,
                                size: 20.r,
                              )),
                        if (channel?.forbidden == 1)
                          FutureBuilder(
                              future: WKIM.shared.channelMemberManager
                                  .getMember(
                                      conversationMsg.channelID,
                                      conversationMsg.channelType,
                                      SpHelper.uid),
                              builder: (context, memberSnapshot) {
                                if (memberSnapshot.hasData) {
                                  final member = memberSnapshot.data;
                                  if (member != null && member.role == 1) {
                                    return Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: StreamSvgIcon(
                                          icon: StreamSvgIcons.forbidden,
                                          color: StreamChatTheme.of(context)
                                              .colorTheme
                                              .accentPrimary,
                                          size: 15.r,
                                        ));
                                  }
                                }
                                return Empty();
                              })
                      ],
                    );
                  });
            }

            return Empty();
          }),
    );
  }
}

/// A widget that displays the last message of a channel.
class ChannelLastMessageText extends StatelessWidget {
  /// Creates a new instance of [ChannelLastMessageText] widget.
  const ChannelLastMessageText({
    super.key,
    required this.channelState,
    this.textStyle,
    this.lastMessagePredicate = _defaultLastMessagePredicate,
  });

  final ChannelState channelState;

  /// The style of the text displayed
  final TextStyle? textStyle;

  /// The predicate to determine if the message should be considered for the
  /// last message.
  ///
  /// This predicate is used to filter out messages that should not be
  /// considered for the last message.
  final bool Function(WKUIConversationMsg) lastMessagePredicate;

  // The default predicate to determine if the message should be
  // considered for the last message.
  static bool _defaultLastMessagePredicate(WKUIConversationMsg message) {
    // if (message.isShadowed) return false;
    if (message.isDeleted == 1) return false;
    // if (message.isError) return false;
    // if (message.isEphemeral) return false;

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: channelState.conversationMsg.getWkMsg(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final message = snapshot.data;
            if (message != null) {
              return FutureBuilder(
                  future: WKMsgUtils.getLatestDisplayContent(message),
                  builder: (context, asyncSnapShot) {
                    if (asyncSnapShot.hasData) {
                      var content = asyncSnapShot.data ?? '';
                      final from = WKMsgUtils.getLatestDisplayFromName(
                          channelState.conversationMsg.channelType, message);
                      if (from.isNotEmpty) {
                        content = from + "：" + content;
                      }
                      if (asyncSnapShot.hasData) {
                        return Text(
                          content,
                          maxLines: 1,
                          style: textStyle,
                          overflow: TextOverflow.ellipsis,
                        );
                      }
                    }

                    return Empty();
                  });
            } else {
              return Empty();
            }
          }
          return Empty();
        });
  }
}

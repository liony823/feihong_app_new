import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/providers/chat/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/model/wk_message_content.dart';
import 'package:wukongimfluttersdk/type/const.dart';

@RoutePage()
class ChatScreen extends HookConsumerWidget {
  final String channelID;
  final int channelType;
  final List<WKMessageContent>? msgContentList;
  final int? lastPreviewMsgOrderSeq;
  final int? keepOffsetY;
  final int? redDot;
  final int? tipsOrderSeq;
  final int? unreadStartMsgOrderSeq;
  final int? aroundMsgSeq;
  const ChatScreen(
      {super.key,
      required this.channelID,
      required this.channelType,
      this.msgContentList,
      this.lastPreviewMsgOrderSeq,
      this.keepOffsetY,
      this.redDot,
      this.tipsOrderSeq,
      this.unreadStartMsgOrderSeq,
      this.aroundMsgSeq});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelState = ref.watch(channelControllerProvider);
    final chatState = ref.watch(chatControllerProvider(
      channelID: channelID,
      channelType: channelType,
      msgContentList: msgContentList,
      lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
      keepOffsetY: keepOffsetY,
      redDot: redDot,
      tipsOrderSeq: tipsOrderSeq,
      unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
      aroundMsgSeq: aroundMsgSeq,
    ));
    return Scaffold(
      appBar: StreamChannelHeader(
        onBackPressed: () => context.router.pop(),
        showConnectionsStateTile: true,
        connectionsState: channelState.connectionStatus,
        channel: chatState.channel,
        subtitle: _buildChatTopSubtitle(context, chatState),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                color: AppTheme.darkSecondaryTextColor2,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: AppTheme.darkSecondaryTextColor2,
              )),
        ],
      ),
    );
  }

  Widget _buildChatTopSubtitle(BuildContext context, ChatProviderState state) {
    if (state.channelType == WKChannelType.group) {
      return Row(
        spacing: 12.w,
        children: [
          Text(
            context.t.msg.groupMembers(count: state.memberCount),
            style: StreamChatTheme.of(context).channelHeaderTheme.subtitleStyle,
          ),
          Text(context.t.msg.onlintCount(count: state.onlineCount),
              style:
                  StreamChatTheme.of(context).channelHeaderTheme.subtitleStyle)
        ],
      );
    } else {
      String text = "";
      if (state.channel.online == 1) {
        text = context.t.c.onlineDevice[state.channel.deviceFlag];
      } else {
        if (state.channel.lastOffline > 0) {
          final showTime = WKTimeUtils.getOnlineTime(state.channel.lastOffline);
          if (showTime.isEmpty) {
            text = context.t.msg.lastSeenTime(
                time: WKTimeUtils.getShowDateAndMinute(
                    state.channel.lastOffline));
          } else {
            text = showTime;
          }
        }
      }

      return Text(text,
          style: StreamChatTheme.of(context).channelHeaderTheme.subtitleStyle);
    }
  }
}

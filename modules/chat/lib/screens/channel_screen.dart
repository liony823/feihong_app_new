import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/type/const.dart';

class ChannelScreen extends HookConsumerWidget {
  const ChannelScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelController = ref.read(channelControllerProvider.notifier);
    final state = ref.watch(channelControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: context.t.c.appNmae.appBarText,
        centerTitle: true,
        leading: _buildConnectionStatusView(context, state),
        leadingWidth: 108.w,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(EvaIcons.search_outline),
          ),
          ContactDropdownMenu(
            onItemPressed: channelController.onDropdownMenuPressed,
          ),
        ],
      ),
      body: SlidableAutoCloseBehavior(
        child: StreamChannelListView(
          channels: state.channelList,
          itemBuilder: (context, items, index, defaultWidget) {
            final chatTheme = StreamChatTheme.of(context);
            final channel = state.channelList[index];
            final backgroundColor = chatTheme.colorTheme.highlight;
            return Slidable(
              groupTag: "channels-actions",
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                extentRatio: 0.4,
                children: [
                  CustomSlidableAction(
                      backgroundColor: backgroundColor,
                      onPressed: (context) {},
                      child: const Icon(Icons.more_horiz)),
                  CustomSlidableAction(
                      backgroundColor: backgroundColor,
                      onPressed: (context) {},
                      child: StreamSvgIcon(
                        icon: StreamSvgIcons.delete,
                        color: chatTheme.colorTheme.accentPrimary,
                      )),
                ],
              ),
              child: ColoredBox(
                color: channel.isTop == 1
                    ? Colors.white70
                    : Colors.white,
                child: defaultWidget,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildConnectionStatusView(
      BuildContext context, ChannelProviderState state) {
    Color bgColor;
    Color textColor;
    final delayMs = state.imConnectionDelayMs + state.chatConnectionDelayMs;
    if (state.connectionStatus == WKConnectStatus.connecting) {
      bgColor = AppTheme.brandColor.withValues(alpha: 0.05);
      textColor = AppTheme.brandColor;
    } else if (state.connectionStatus == WKConnectStatus.fail ||
        state.connectionStatus == WKConnectStatus.noNetwork ||
        delayMs >= 160) {
      bgColor = AppTheme.errorColor.withValues(alpha: 0.05);
      textColor = AppTheme.errorColor;
    } else {
      bgColor = AppTheme.successColor.withValues(alpha: 0.05);
      textColor = AppTheme.successColor;
    }
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 28.w,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              margin: EdgeInsets.only(left: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: bgColor,
              ),
              child: Center(
                child: (delayMs > -1 && (state.connectionStatus == WKConnectStatus.success || state.connectionStatus == WKConnectStatus.syncCompleted))
                    ? Text(
                        '${delayMs}ms',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12.sp,
                        ),
                      )
                    : Text(
                        context.t.home.connectionStatus[state.connectionStatus],
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12.sp,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

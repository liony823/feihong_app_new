import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wukongimfluttersdk/model/wk_message_content.dart';

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
    return Scaffold();
  }
}

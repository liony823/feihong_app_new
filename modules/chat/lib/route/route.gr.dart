// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:chat/screens/chat_screen.dart' as _i1;
import 'package:flutter/material.dart' as _i3;
import 'package:wukongimfluttersdk/model/wk_message_content.dart' as _i4;

/// generated route for
/// [_i1.ChatScreen]
class ChatRoute extends _i2.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i3.Key? key,
    required String channelID,
    required int channelType,
    List<_i4.WKMessageContent>? msgContentList,
    int? lastPreviewMsgOrderSeq,
    int? keepOffsetY,
    int? redDot,
    int? tipsOrderSeq,
    int? unreadStartMsgOrderSeq,
    int? aroundMsgSeq,
    List<_i2.PageRouteInfo>? children,
  }) : super(
         ChatRoute.name,
         args: ChatRouteArgs(
           key: key,
           channelID: channelID,
           channelType: channelType,
           msgContentList: msgContentList,
           lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
           keepOffsetY: keepOffsetY,
           redDot: redDot,
           tipsOrderSeq: tipsOrderSeq,
           unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
           aroundMsgSeq: aroundMsgSeq,
         ),
         initialChildren: children,
       );

  static const String name = 'ChatRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatRouteArgs>();
      return _i1.ChatScreen(
        key: args.key,
        channelID: args.channelID,
        channelType: args.channelType,
        msgContentList: args.msgContentList,
        lastPreviewMsgOrderSeq: args.lastPreviewMsgOrderSeq,
        keepOffsetY: args.keepOffsetY,
        redDot: args.redDot,
        tipsOrderSeq: args.tipsOrderSeq,
        unreadStartMsgOrderSeq: args.unreadStartMsgOrderSeq,
        aroundMsgSeq: args.aroundMsgSeq,
      );
    },
  );
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.channelID,
    required this.channelType,
    this.msgContentList,
    this.lastPreviewMsgOrderSeq,
    this.keepOffsetY,
    this.redDot,
    this.tipsOrderSeq,
    this.unreadStartMsgOrderSeq,
    this.aroundMsgSeq,
  });

  final _i3.Key? key;

  final String channelID;

  final int channelType;

  final List<_i4.WKMessageContent>? msgContentList;

  final int? lastPreviewMsgOrderSeq;

  final int? keepOffsetY;

  final int? redDot;

  final int? tipsOrderSeq;

  final int? unreadStartMsgOrderSeq;

  final int? aroundMsgSeq;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, channelID: $channelID, channelType: $channelType, msgContentList: $msgContentList, lastPreviewMsgOrderSeq: $lastPreviewMsgOrderSeq, keepOffsetY: $keepOffsetY, redDot: $redDot, tipsOrderSeq: $tipsOrderSeq, unreadStartMsgOrderSeq: $unreadStartMsgOrderSeq, aroundMsgSeq: $aroundMsgSeq}';
  }
}

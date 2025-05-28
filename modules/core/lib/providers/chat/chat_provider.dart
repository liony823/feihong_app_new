import 'package:common/common.dart';
import 'package:core/providers/chat/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/model/wk_message_content.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatProvider extends _$ChatProvider {
  @override
  ChatProviderState build(
      {required String channelID,
      required int channelType,
      List<WKMessageContent> msgContentList = const [],
      int lastPreviewMsgOrderSeq = 0,
      int keepOffsetY = 0,
      int redDot = 0,
      int tipsOrderSeq = 0,
      int unreadStartMsgOrderSeq = 0,
      int aroundMsgSeq = 0}) {
      
    _initParams();
    _initListener();
    return ChatProviderState(
      channelID: channelID,
      channelType: channelType,
      lastPreviewMsgOrderSeq: lastPreviewMsgOrderSeq,
      keepOffsetY: keepOffsetY,
      redDot: redDot,
      tipsOrderSeq: tipsOrderSeq,
      unreadStartMsgOrderSeq: unreadStartMsgOrderSeq,
      aroundMsgSeq: aroundMsgSeq,
      msgContentList: msgContentList
    );
  }

  void _initParams() async {
    final channelID = state.channelID;
    final channelType = state.channelType;
    final maxMsgOrderSeq = await WKIM.shared.messageManager.getMessageOrderSeq(0,channelID, channelType);
    final maxSeq = await WKIM.shared.messageManager.getMaxMessageSeq(channelID, channelType);
    state = state.copyWith(
      maxMsgOrderSeq: maxMsgOrderSeq,
      maxMsgSeq: maxSeq
    );
    _resetHideChannelAllPinnedMessage();
    // 判断是否含有带转发的消息
    if (!Utils.isEmptyOrNull(state.msgContentList)){
      List<WKChannel> list = [];
      WKChannel? channel = await WKIM.shared.channelManager.getChannel(channelID, channelType);
      if (channel != null){
        list.add(channel);
        //TODO 转发消息
      }
    }
  }

  void _initListener(){
    //监听频道改变通知
  }

  void _resetHideChannelAllPinnedMessage(){
    final hideChannelAllPinnedMessage = SpHelper.getHideChannelAllPinnedMessage("${state.channelID}_${state.channelType}");
    state = state.copyWith(hideChannelAllPinnedMessage: hideChannelAllPinnedMessage ?? 0);
  }
}

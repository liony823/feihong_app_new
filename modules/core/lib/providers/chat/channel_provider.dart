import 'package:core/core.dart';
import 'package:core/helper/dropdown_menu.dart';
import 'package:core/models/channel/conversation_msg.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/type/const.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'channel_provider.g.dart';

class ChannelState {
  final bool isEnd;
  final int imConnectionDelayMs;
  final int unreadMessageCount;
  final int connectionStatus;
  final List<UIConversation> conversations;
  ChannelState({
    required this.isEnd,
    required this.imConnectionDelayMs,
    required this.unreadMessageCount,
    required this.conversations,
    required this.connectionStatus,
  });

  ChannelState copyWith({
    int? unreadMessageCount,
    int? connectionStatus,
    int? imConnectionDelayMs,
    List<UIConversation>? conversations,
    bool? isEnd,
  }) {
    return ChannelState(
      isEnd: isEnd ?? this.isEnd,
      imConnectionDelayMs: imConnectionDelayMs ?? this.imConnectionDelayMs,
      conversations: conversations ?? this.conversations,
      connectionStatus: connectionStatus ?? this.connectionStatus,
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }
}

@Riverpod(keepAlive: true)
class ChannelController extends _$ChannelController with DropdownMenuMixin {
  @override
  ChannelState build() {
    return ChannelState(
        unreadMessageCount: 0,
        imConnectionDelayMs: 0,
        connectionStatus: WKConnectStatus.connecting,
        isEnd: false,
        conversations: []);
  }

  Future<void> initialize() async {
    _getDataList();
    _initListener();
    await getUnreadMessageCount();
  }

  void _initListener() {
    /// 监听连接状态变化
    WKIM.shared.connectionManager.addOnConnectionStatus('home',
        (status, reason, connInfo) {
      state = state.copyWith(connectionStatus: status);
    });

    /// 监听会话未读数量列表变化
    WKIM.shared.conversationManager
        .addOnClearAllRedDotListener('channel_conversation', () {
      for (var i = 0; i < state.conversations.length; i++) {
        state.conversations[i].msg.unreadCount = 0;
      }
    });

    /// 监听消息列表变化
    WKIM.shared.conversationManager
        .addOnRefreshMsgListListener('channel_conversation', (list) {
      if (list.isEmpty) {
        return;
      }
      List<WKUIConversationMsg> newList = [];
      for (var msg in list){
        bool isAdd = true;
        for (var i = 0; i < state.conversations.length; i++) {
          if (state.conversations[i].msg.channelID == msg.channelID) {
            state.conversations[i].msg = msg;
            state.conversations[i].lastContent = "";
            state.conversations[i].reminders = null;
            isAdd = false;
            break;
          }
        }
        if (isAdd) {
          state.conversations.add(UIConversation(msg));
        }
        newList.add(msg);
      }
    });
        // 监听刷新channel资料事件
    WKIM.shared.channelManager.addOnRefreshListener("cover_chat", (channel) {
      for (var i = 0; i < state.conversations.length; i++) {
        if (state.conversations[i].msg.channelID == channel.channelID &&
            state.conversations[i].msg.channelType == channel.channelType) {
          state.conversations[i].msg.setWkChannel(channel);
          state.conversations[i].channelAvatar = channel.channelType == WKChannelType.personal
              ? Apis.getAvatarUrl(channel.channelID, cacheKey:  channel.avatarCacheKey)
              : Apis.getGroupAvatarUrl(channel.channelID, cacheKey: channel.avatarCacheKey);
              
          state.conversations[i].channelName = channel.channelName;
          break;
        }
      }
    });
  }

  void _checkIMConnectionDelayMs() {
    WKIM.shared.connectionManager.checkNetworkSecond;
  }
 
  Future<void> getUnreadMessageCount() async {
    final unreadMessageCount =
        await WKIM.shared.conversationManager.getAllUnreadCount();
    state = state.copyWith(unreadMessageCount: unreadMessageCount);
  }

  void _getDataList() {
    Future<List<WKUIConversationMsg>> list =
        WKIM.shared.conversationManager.getAll();
    list.then((result) {
      for (var i = 0; i < result.length; i++) {
        // 这里可以根据需要对数据进行处理
        state.conversations.add(UIConversation(result[i]));
      }
    });
  }

  void sortMsg() {}
}

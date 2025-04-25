import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'channel_provider.g.dart';

class ChannelState {
  final int unreadMessageCount;
  final List<WKUIConversationMsg> conversations = [];
  ChannelState({
    required this.unreadMessageCount,
  });

  ChannelState copyWith({
    int? unreadMessageCount,
  }) {
    return ChannelState(
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }
}

@Riverpod(keepAlive: true)
class ChannelController extends _$ChannelController {
  @override
  ChannelState build() {
    return ChannelState(unreadMessageCount: 0);
  }

  Future<void> initialize() async {
    _getDataList();
    await getUnreadMessageCount();
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
        state.conversations.add(result[i]);
      }
    });
  }

  void sortMsg(){
    
  }
}

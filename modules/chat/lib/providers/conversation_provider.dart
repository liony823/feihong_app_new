import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wukongimfluttersdk/wkim.dart';

part 'conversation_provider.g.dart';

class ConversationState {
  final int unreadMessageCount;
  ConversationState({
    required this.unreadMessageCount,
  });

  ConversationState copyWith({
    int? unreadMessageCount,
  }) {
    return ConversationState(
      unreadMessageCount: unreadMessageCount ?? this.unreadMessageCount,
    );
  }
}

@Riverpod(keepAlive: true)
class ConversationController extends _$ConversationController {
  @override
  ConversationState build() {
    return ConversationState(unreadMessageCount: 0);
  }

  Future<void> initialize() async {
    await getUnreadMessageCount();
  }

  Future<void> getUnreadMessageCount() async {
    final unreadMessageCount =
        await WKIM.shared.conversationManager.getAllUnreadCount();
    state = state.copyWith(unreadMessageCount: unreadMessageCount);
  }
}

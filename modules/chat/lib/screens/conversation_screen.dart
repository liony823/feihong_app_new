import 'package:chat/providers/conversation_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConversationScreen extends HookConsumerWidget {
  const ConversationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(conversationControllerProvider);
    return Scaffold(
      body: Text(state.unreadMessageCount.toString()),
    );
  }
}

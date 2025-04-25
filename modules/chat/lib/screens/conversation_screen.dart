import 'package:chat/providers/channel_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChannelScreen extends HookConsumerWidget {
  const ChannelScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(channelControllerProvider);
    return Scaffold(
      body: Text(state.unreadMessageCount.toString()),
    );
  }
}

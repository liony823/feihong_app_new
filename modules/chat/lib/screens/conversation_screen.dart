import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

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
    );
  }
}

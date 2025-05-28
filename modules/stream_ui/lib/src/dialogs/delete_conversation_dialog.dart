import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:stream_ui/stream_ui.dart';

class DeleteConversationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatTheme = StreamChatTheme.of(context);
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.w),
      ),
      backgroundColor: chatTheme.colorTheme.appBg,
      title: Text(context.t.home.conversation.deleteTitle),
      titleTextStyle: chatTheme.textTheme.title,
      titlePadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
      contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
      content: Text(context.t.home.conversation.deleteSubtitle),
      actionsPadding: EdgeInsets.symmetric(vertical: 10.w,horizontal: 24.w),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(context.t.c.cancel),
          style: TextButton.styleFrom(
            foregroundColor: chatTheme.colorTheme.textLowEmphasis,
          ),
        ),
        TextButton(
          onPressed: () => context.pop(true),
          child: Text(context.t.home.conversation.deleteConfirm),
          style: TextButton.styleFrom(
            foregroundColor: chatTheme.colorTheme.accentError,
          ),
        ),
      ],
    );
  }
}

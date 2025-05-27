import 'package:flutter/material.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';

/// It shows the current [Channel] name using a [Text] widget.
///
/// The widget uses a [StreamBuilder] to render the channel information
/// image as soon as it updates.
class ChannelName extends StatelessWidget {
  /// Instantiate a new ChannelName
  const ChannelName({
    super.key,
    required this.channelState,
    this.textStyle,
    this.textOverflow = TextOverflow.ellipsis,
  });


  final ChannelState channelState;

  /// The style of the text displayed
  final TextStyle? textStyle;

  /// How visual overflow should be handled.
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) =>  FutureBuilder(
    future: WKMsgUtils.getLatestDisplayTitle(channelState.conversationMsg),
    builder: (context,snapshot) {
      if (snapshot.hasData) {
        return Text(
          snapshot.data!,
          style: textStyle,
          overflow: textOverflow,
        );
      }

      return Empty();
    }
  );
}

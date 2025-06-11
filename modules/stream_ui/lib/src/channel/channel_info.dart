import 'package:flutter/widgets.dart';

class StreamChannelInfo extends StatelessWidget {
  const StreamChannelInfo({
    super.key,
    this.textStyle,
    this.showTypingIndicator = true,
  });

    /// The style of the text displayed
  final TextStyle? textStyle;

    /// Whether to show the typing indicator
  ///
  /// Defaults to `true`
  final bool showTypingIndicator;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
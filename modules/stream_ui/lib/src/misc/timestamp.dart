import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:stream_ui/src/utils/wk_time.dart';

/// {@template streamTimestamp}
/// Represents a timestamp, that's used primarily for showing the time of a
/// message.
///
/// This widget uses the [formatDate] function to format the date to a String.
/// {@endtemplate}
class StreamTimestamp extends StatelessWidget {
  /// {@macro streamTimestamp}
  const StreamTimestamp({
    super.key,
    required this.date,
    this.style,
    this.textAlign,
    this.textDirection,
  });

  /// The date to show in the timestamp.
  final DateTime date;

  /// The style to apply to the text.
  final TextStyle? style;

  /// The alignment of the text.
  final TextAlign? textAlign;

  /// The direction of the text.
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      WKTimeUtils.getChatTime(date.millisecondsSinceEpoch),
      maxLines: 1,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      overflow: TextOverflow.ellipsis,
    );
  }
}

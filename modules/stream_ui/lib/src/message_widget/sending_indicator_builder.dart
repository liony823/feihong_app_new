import 'package:lottie/lottie.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:wukongimfluttersdk/entity/conversation.dart';
import 'package:wukongimfluttersdk/type/const.dart';

/// {@template sendingIndicatorWrapper}
/// Helper widget for building a [StreamSendingIndicator].
///
/// Used in [BottomRow]. Should not be used elsewhere.
/// {@endtemplate}
class SendingIndicatorBuilder extends StatelessWidget {
  /// {@macro sendingIndicatorWrapper}
  const SendingIndicatorBuilder(
      {super.key,
      required this.message,
      required this.cid,
      this.isPlayAnimation = false});

  /// {@macro message}
  final WKUIConversationMsg message;

  final String cid;

  final bool isPlayAnimation;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: message.getWkMsg(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox();
          }
          final message = snapshot.data;
          if (message != null) {
            bool isSingle = true;
            bool isError = false;
            bool autoRepeat = false;
            int status = WKSendMsgResult.sendSuccess;
            status = message.status;
            String asset = "";
            bool isSend = message.isDeleted == 0 &&
                message.fromUID.isNotEmpty &&
                message.fromUID == cid;
            if (isSend) {
              if (status == WKSendMsgResult.sendSuccess) {
                if (message.setting.receipt == 1 &&
                    message.wkMsgExtra!.readedCount > 0) {
                  asset = 'lib/assets/animations/ticks_double.json';
                  isSingle = false;
                } else {
                  asset = 'lib/assets/animations/ticks_single.json';
                }
              } else if (status == WKSendMsgResult.sendLoading) {
                autoRepeat = true;
                asset = 'lib/assets/animations/msg_sending.json';
              } else {
                isError = true;
                asset = 'lib/assets/animations/error.json';
              }

              return Lottie.asset(asset,
                  package: "stream_ui",
                  width: 22,
                  height: 22,
                  repeat: autoRepeat,
                  animate: autoRepeat || isPlayAnimation);
            }
          }
          return const Empty();
        });
  }
}

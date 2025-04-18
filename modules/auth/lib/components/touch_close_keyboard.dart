import 'package:flutter/material.dart';

class TouchCloseSoftKeyboard extends StatelessWidget {
  final Widget child;
  final Function? onTouch;
  final bool isGradientBg;

  const TouchCloseSoftKeyboard({
    super.key,
    required this.child,
    this.onTouch,
    this.isGradientBg = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        onTouch?.call();
      },
      child: isGradientBg
          ? Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 210, 240, 255),
                    const Color.fromARGB(255, 225, 245, 255),
                    const Color.fromARGB(255, 240, 250, 255),
                    const Color(0xFFFBFBFD),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: child,
            )
          : child,
    );
  }
}

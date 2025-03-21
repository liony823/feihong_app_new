import 'package:feihong/common.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Styles.brandColor.withValues(alpha: 10 / 100),
            Styles.primaryLight.withValues(alpha: 0 / 100)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(child: ImageRes.logo.toImage),
    );
  }
}

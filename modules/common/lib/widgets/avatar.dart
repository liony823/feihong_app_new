import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class Avatar extends StatelessWidget {
  final String uid;
  final String name;
  final double size;
  final String url;
  final BoxDecoration? decoration;
  final VoidCallback? onTap;
  final bool disableCache;
  const Avatar({
    super.key,
    required this.uid,
    required this.name,
    required this.url,
    this.size = 40,
    this.decoration,
    this.onTap,
    this.disableCache = false,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, String> headers = {};
    if (disableCache) {
      headers = {'cache-control': 'no-cache'};
    }
    return GestureDetector(
      onTap: onTap,
      child: AdvancedAvatar(
        name: name,
        image: NetworkImage(url, headers: headers),
        size: size,
        decoration: decoration ??
            BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.r),
            ),
      ),
    );
  }
}

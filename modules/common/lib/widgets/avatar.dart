import 'package:flutter/material.dart';
import 'package:acter_avatar/acter_avatar.dart';

class Avatar extends StatelessWidget {
  final String uid;
  final String name;
  final double size;
  final String url;
  const Avatar({
    super.key,
    required this.uid,
    required this.name,
    required this.url,
    this.size = 36,
  });

  @override
  Widget build(BuildContext context) {
    final avatarOptions = AvatarOptions(
      AvatarInfo(
        uniqueId: uid,
        displayName: name,
        uniqueName: uid,
        avatar: NetworkImage(url),
      ),
      size: size,
    );
    return ActerAvatar(
      options: avatarOptions,
    );
  }
}

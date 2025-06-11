import 'package:cached_network_image/cached_network_image.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';

class StreamChannelAvatar extends StatelessWidget {
  const StreamChannelAvatar({
    super.key,
    this.borderRadius,
    this.constraints,
    this.onTap,
    this.selected = false,
    this.selectionColor,
    this.selectionThickness = 4,
    this.ownSpaceAvatarBuilder,
    this.oneToOneAvatarBuilder,
    this.groupAvatarBuilder,
    required this.channel,
  });

  /// [BorderRadius] to display the widget
  final BorderRadius? borderRadius;

  /// The channel to show the image of
  final WKChannel channel;

  /// The diameter of the image
  final BoxConstraints? constraints;

  /// The function called when the image is tapped
  final VoidCallback? onTap;

  /// If image is selected
  final bool selected;

  /// Selection color for image
  final Color? selectionColor;

  /// Thickness of selection image
  final double selectionThickness;

  /// Builder to create avatar for own space channel.
  ///
  /// Defaults to [StreamUserAvatar].
  final StreamUserAvatarBuilder? ownSpaceAvatarBuilder;

  /// Builder to create avatar for one to one channel.
  ///
  /// Defaults to [StreamUserAvatar].
  final StreamUserAvatarBuilder? oneToOneAvatarBuilder;

  /// Builder to create avatar for group channel.
  ///
  /// Defaults to [StreamGroupAvatar].
  final StreamGroupAvatarBuilder? groupAvatarBuilder;

  @override
  Widget build(BuildContext context) {
    final chatThemeData = StreamChatTheme.of(context);
    final colorTheme = chatThemeData.colorTheme;
    final previewTheme = chatThemeData.channelPreviewTheme.avatarTheme;

    final fallbackWidget = Center(
      child: Text(
        channel.channelName,
        style: TextStyle(
          color: colorTheme.barsBg,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Widget child = ClipRRect(
      borderRadius:
          borderRadius ?? previewTheme?.borderRadius ?? BorderRadius.zero,
      child: Container(
          constraints: constraints ?? previewTheme?.constraints,
          decoration: BoxDecoration(color: colorTheme.accentPrimary),
          child: InkWell(
            onTap: onTap,
            child: CachedNetworkImage(
              imageUrl: Apis.getAvatarUrl(channel.channelID),
              errorWidget: (context, url, error) => fallbackWidget,
              fit: BoxFit.cover,
            ),
          )),
    );

    if (selected) {
      child = ClipRRect(
        key: const Key('selectedImage'),
        borderRadius: BorderRadius.circular(selectionThickness) +
            (borderRadius ?? previewTheme?.borderRadius ?? BorderRadius.zero),
        child: Container(
          constraints: constraints ?? previewTheme?.constraints,
          color: selectionColor ?? colorTheme.accentPrimary,
          child: Padding(
              padding: EdgeInsets.all(selectionThickness), child: child),
        ),
      );
    }

    return child;
  }
}

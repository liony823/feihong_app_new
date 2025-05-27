import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';

/// WidgetBuilder for [UserAvatar].
typedef StreamUserAvatarBuilder = Widget Function(
  BuildContext context,
  String url,
  // ignore: avoid_positional_boolean_parameters
  bool isSelected,
);

/// {@template UserAvatar}
/// Displays a user's avatar.
/// {@endtemplate}
class UserAvatar extends StatelessWidget {
  /// {@macro UserAvatar}
  const UserAvatar({
    super.key,
    required this.user,
    this.showOnlineStatus = true,
    this.displayName,
    this.constraints,
    this.onlineIndicatorConstraints,
    this.onTap,
    this.onLongPress,
    this.borderRadius,
    this.onlineIndicatorAlignment = Alignment.topRight,
    this.selected = false,
    this.selectionColor,
    this.selectionThickness = 4,
    this.placeholder,
  });

  final User user;

  final String? displayName;

  final bool showOnlineStatus;

  /// Alignment of the online indicator
  ///
  /// Defaults to `Alignment.topRight`
  final Alignment onlineIndicatorAlignment;

  /// Sizing constraints of the avatar
  final BoxConstraints? constraints;

  /// [BorderRadius] of the image
  final BorderRadius? borderRadius;

  /// Sizing constraints of the online indicator
  final BoxConstraints? onlineIndicatorConstraints;

  /// {@macro onUserAvatarTap}
  final Function? onTap;

  /// {@macro onUserAvatarTap}
  final Function? onLongPress;

  /// Flag for if avatar is selected
  ///
  /// Defaults to `false`
  final bool selected;

  /// Color of selection
  final Color? selectionColor;

  /// Selection thickness around the avatar
  ///
  /// Defaults to `4`
  final double selectionThickness;

  /// {@macro placeholderUserImage}
  final Function(BuildContext context, User user)? placeholder;

  @override
  Widget build(BuildContext context) {
    final streamChatTheme = StreamChatTheme.of(context);
    final streamChatConfig = StreamChatConfiguration.of(context);

    final hasImage = user.image != null && user.image!.isNotEmpty;

    final placeholder =
        this.placeholder ?? streamChatConfig.placeholderUserImage;

    final backupGradientAvatar = ClipRRect(
      borderRadius: borderRadius ??
          streamChatTheme.ownMessageTheme.avatarTheme?.borderRadius ??
          BorderRadius.zero,
      child: streamChatConfig.defaultUserImage(context, user),
    );


    Widget avatar = FittedBox(
      fit: BoxFit.cover,
      child: Container(
        constraints: constraints ??
            streamChatTheme.ownMessageTheme.avatarTheme?.constraints,
        child: hasImage
            ? CachedNetworkImage(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                imageUrl: user.image!,
                errorWidget: (context, __, ___) => backupGradientAvatar,
                placeholder: placeholder != null
                    ? (context, __) => placeholder(context, user)
                    : null,
                imageBuilder: (context, imageProvider) => DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: borderRadius ??
                        streamChatTheme
                            .ownMessageTheme.avatarTheme?.borderRadius,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            : backupGradientAvatar,
      ),
    );

    if (selected) {
      avatar = ClipRRect(
        borderRadius: (borderRadius ??
                streamChatTheme.ownMessageTheme.avatarTheme?.borderRadius ??
                BorderRadius.zero) +
            BorderRadius.circular(selectionThickness),
        child: Container(
          constraints: constraints ??
              streamChatTheme.ownMessageTheme.avatarTheme?.constraints,
          color: selectionColor ?? streamChatTheme.colorTheme.accentPrimary,
          child: Padding(
            padding: EdgeInsets.all(selectionThickness),
            child: avatar,
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap != null ? () => onTap!(user) : null,
      onLongPress: onLongPress != null ? () => onLongPress!(user) : null,
      child: Stack(
        children: <Widget>[
          avatar,
          if (showOnlineStatus && user.oline == true)
            Positioned.fill(
              child: Align(
                alignment: onlineIndicatorAlignment,
                child: Material(
                  type: MaterialType.circle,
                  color: streamChatTheme.colorTheme.barsBg,
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    constraints: onlineIndicatorConstraints ??
                        const BoxConstraints.tightFor(
                          width: 8,
                          height: 8,
                        ),
                    child: Material(
                      shape: const CircleBorder(),
                      color: streamChatTheme.colorTheme.accentInfo,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

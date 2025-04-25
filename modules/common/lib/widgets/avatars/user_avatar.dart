import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

import 'gradient_avatar.dart';

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
    required this.url,
    this.oline,
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

  final String url;

  final String? displayName;

  final bool? oline;

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
  final Function(BuildContext context, String avatar)? placeholder;

  @override
  Widget build(BuildContext context) {
    final online = oline ?? false;
    final hasImage = url.isNotEmpty;
    final backupGradientAvatar = ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(8.r),
      child: StreamGradientAvatar(
        name: displayName ?? '',
        userId: url,
      ),
    );

    Widget avatar = FittedBox(
      fit: BoxFit.cover,
      child: Container(
        constraints: constraints ??
            BoxConstraints.tightFor(width: 48.w,height: 48.w),
        child: hasImage
            ? CachedNetworkImage(
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                imageUrl: url,
                errorWidget: (context, __, ___) => backupGradientAvatar,
                placeholder: placeholder != null
                    ? (context, __) => placeholder!(context, url)
                    : null,
                imageBuilder: (context, imageProvider) => DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: borderRadius ??
                        
                        BorderRadius.circular(8.r),
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
             
                BorderRadius.circular(8.r)) +
            BorderRadius.circular(selectionThickness),
        child: Container(
          constraints: constraints ??
              BoxConstraints.tightFor(width: 32.w,height: 32.w),
          color: selectionColor ?? AppTheme.brandColor,
          child: Padding(
            padding: EdgeInsets.all(selectionThickness),
            child: avatar,
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap != null ? () => onTap!(url) : null,
      onLongPress: onLongPress != null ? () => onLongPress!(url) : null,
      child: Stack(
        children: <Widget>[
          avatar,
          if (online)
            Positioned.fill(
              child: Align(
                alignment: onlineIndicatorAlignment,
                child: Material(
                  type: MaterialType.circle,
                  color: AppTheme.primaryLightColor,
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    constraints: onlineIndicatorConstraints ??
                        const BoxConstraints.tightFor(
                          width: 8,
                          height: 8,
                        ),
                    child: Material(
                      shape: const CircleBorder(),
                      color: AppTheme.accentColor,
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

import 'package:common/common.dart';
import 'package:stream_ui/stream_ui.dart';
import 'package:flutter/material.dart';
import 'package:wukongimfluttersdk/entity/channel.dart';
import 'package:wukongimfluttersdk/entity/channel_member.dart';

/// WidgetBuilder for [StreamGroupAvatar].
typedef StreamGroupAvatarBuilder = Widget Function(
  BuildContext context,
  List<WKChannelMember> members,
  // ignore: avoid_positional_boolean_parameters
  bool isSelected,
);

/// {@template streamGroupAvatar}
/// Widget for constructing a group of images
/// {@endtemplate}
class StreamGroupAvatar extends StatelessWidget {
  /// {@macro streamGroupAvatar}
  const StreamGroupAvatar({
    super.key,
    this.channel,
    required this.members,
    this.constraints,
    this.onTap,
    this.borderRadius,
    this.selected = false,
    this.selectionColor,
    this.selectionThickness = 4,
  });

  /// The channel of the avatar
  final WKChannel? channel;

  /// The list of members in the group whose avatars should be displayed.
  final List<WKChannelMember> members;

  /// Constraints on the widget
  final BoxConstraints? constraints;

  /// The action to perform when the widget is tapped
  final VoidCallback? onTap;

  /// If `true`, this widget should be highlighted.
  ///
  /// Defaults to `false`.
  final bool selected;

  /// [BorderRadius] to pass to the widget
  final BorderRadius? borderRadius;

  /// The color to highlight the widget with if [selected] is `true`
  final Color? selectionColor;

  /// The value to use for the border thickness and padding of the
  /// selected image
  final double selectionThickness;

  @override
  Widget build(BuildContext context) {
    final streamChatTheme = StreamChatTheme.of(context);
    final colorTheme = streamChatTheme.colorTheme;
    final previewTheme = streamChatTheme.channelPreviewTheme.avatarTheme;

    Widget avatar = GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius:
            borderRadius ?? previewTheme?.borderRadius ?? BorderRadius.zero,
        child: Container(
          constraints: constraints ?? previewTheme?.constraints,
          decoration: BoxDecoration(color: colorTheme.accentPrimary),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: members
                      .take(2)
                      .map(
                        (member) => Flexible(
                          fit: FlexFit.tight,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            clipBehavior: Clip.antiAlias,
                            child: Transform.scale(
                              scale: 1.2,
                              child: UserAvatar(
                                borderRadius: BorderRadius.zero,
                                user: User(
                                    uid: member.memberUID,
                                    name: member.memberRemark.isEmpty ? member.memberName: member.memberRemark,
                                    image: member.memberAvatar,
                                    oline: false),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              if (members.length > 2)
                Flexible(
                  fit: FlexFit.tight,
                  child: Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: members
                        .skip(2)
                        .take(2)
                        .map(
                          (member) => Flexible(
                            fit: FlexFit.tight,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              clipBehavior: Clip.antiAlias,
                              child: Transform.scale(
                                scale: 1.2,
                                child: UserAvatar(
                                  user: User(
                                      uid: member.memberUID,
                                      name: member.memberRemark.isEmpty ? member.memberName: member.memberRemark,
                                      image: member.memberAvatar,
                                      oline: false),
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );

    if (selected) {
      avatar = ClipRRect(
        borderRadius: BorderRadius.circular(selectionThickness) +
            (borderRadius ?? previewTheme?.borderRadius ?? BorderRadius.zero),
        child: Container(
          constraints: constraints ?? previewTheme?.constraints,
          color: selectionColor ?? colorTheme.accentPrimary,
          child: Padding(
            padding: EdgeInsets.all(selectionThickness),
            child: avatar,
          ),
        ),
      );
    }

    return avatar;
  }
}

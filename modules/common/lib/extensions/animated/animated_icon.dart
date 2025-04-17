part of '../extensions.dart';

class _AnimatedIconContainer extends Icon {
  const _AnimatedIconContainer(
    super.icon, {
    super.color,
    super.semanticLabel,
    super.size,
    super.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    final _AnimatedModel? animation =
        _StyledInheritedAnimation.of(context)?.animation;
    if (animation == null) {
      return super.build(context);
    }
    // assert(
    //     animation != null, 'You can`t animate without specifying an animation');
    return _AnimatedIcon(
      icon,
      duration: animation.duration,
      curve: animation.curve,
      color: color,
      semanticLabel: semanticLabel,
      size: size,
      textDirection: textDirection,
    );
  }
}

class _AnimatedIcon extends ImplicitlyAnimatedWidget {
  /// Creates a container that animates its parameters implicitly.
  ///
  /// The [curve] and [duration] arguments must not be null.
  const _AnimatedIcon(
    this.icon, {
    this.color,
    this.semanticLabel,
    this.size,
    this.textDirection,
    super.curve,
    required super.duration,
  });

  final IconData? icon;
  final double? size;
  final Color? color;
  final String? semanticLabel;
  final TextDirection? textDirection;

  @override
  _AnimatedIconState createState() => _AnimatedIconState();
}

class _AnimatedIconState extends AnimatedWidgetBaseState<_AnimatedIcon> {
  ColorTween? _color;
  Tween<double>? _size;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _color = visitor(
      _color,
      widget.color,
      (dynamic value) => ColorTween(begin: value as Color),
    ) as ColorTween?;
    _size = visitor(
      _size,
      widget.size,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.icon,
      semanticLabel: widget.semanticLabel,
      textDirection: widget.textDirection,
      color: _color?.evaluate(animation),
      size: _size?.evaluate(animation),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder description) {
    super.debugFillProperties(description);
  }
}

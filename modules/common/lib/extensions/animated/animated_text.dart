part of '../extensions.dart';

class _AnimatedTextContainer extends Text {
  const _AnimatedTextContainer(
    super.data, {
    super.locale,
    super.maxLines,
    super.overflow,
    super.semanticsLabel,
    super.softWrap,
    super.strutStyle,
    super.style,
    super.textAlign,
    super.textDirection,
    super.textScaler,
    super.textWidthBasis,
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
    return _AnimatedText(
      data ?? '',
      duration: animation.duration,
      curve: animation.curve,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textScaler: textScaler,
      textWidthBasis: textWidthBasis,
    );
  }
}

class _AnimatedText extends ImplicitlyAnimatedWidget {
  /// Creates a container that animates its parameters implicitly.
  ///
  /// The [curve] and [duration] arguments must not be null.
  const _AnimatedText(
    this.data, {
    this.locale,
    this.maxLines,
    this.overflow,
    this.semanticsLabel,
    this.softWrap,
    this.strutStyle,
    this.style,
    this.textAlign,
    this.textDirection,
    this.textScaler,
    this.textWidthBasis,
    super.curve,
    required super.duration,
  });

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends AnimatedWidgetBaseState<_AnimatedText> {
  Tween<double>? _textScaleFactor;
  Tween<double>? _fontSize;
  Tween<double>? _letterSpacing;
  Tween<double>? _wordSpacing;
  Tween<double>? _height;
  Tween<double>? _decorationThickness;
  IntTween? _maxLines;
  ColorTween? _color;
  ColorTween? _decorationColor;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _textScaleFactor = visitor(
      _textScaleFactor,
      widget.textScaler,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _fontSize = visitor(
      _fontSize,
      widget.style?.fontSize,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _letterSpacing = visitor(
      _letterSpacing,
      widget.style?.letterSpacing,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _wordSpacing = visitor(
      _wordSpacing,
      widget.style?.wordSpacing,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _height = visitor(
      _height,
      widget.style?.height,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _decorationThickness = visitor(
      _decorationThickness,
      widget.style?.decorationThickness,
      (dynamic value) => Tween<double>(begin: value as double),
    ) as Tween<double>?;
    _maxLines = visitor(
      _maxLines,
      widget.maxLines,
      (dynamic value) => IntTween(begin: value as int),
    ) as IntTween?;
    _color = visitor(
      _color,
      widget.style?.color,
      (dynamic value) => ColorTween(begin: value as Color),
    ) as ColorTween?;
    _decorationColor = visitor(
      _decorationColor,
      widget.style?.decorationColor,
      (dynamic value) => ColorTween(begin: value as Color),
    ) as ColorTween?;
  }

  @override
  Widget build(BuildContext context) => Text(
        widget.data,
        style: widget.style?.copyWith(
          fontSize: _fontSize?.evaluate(animation),
          letterSpacing: _letterSpacing?.evaluate(animation),
          wordSpacing: _wordSpacing?.evaluate(animation),
          height: _height?.evaluate(animation),
          decorationThickness: _decorationThickness?.evaluate(animation),
          color: _color?.evaluate(animation),
          decorationColor: _decorationColor?.evaluate(animation),
        ),
        strutStyle: widget.strutStyle,
        textAlign: widget.textAlign,
        textDirection: widget.textDirection,
        locale: widget.locale,
        softWrap: widget.softWrap,
        overflow: widget.overflow,
        // textScaleFactor: _textScaleFactor?.evaluate(animation),
        maxLines: _maxLines?.evaluate(animation),
        semanticsLabel: widget.semanticsLabel,
        textWidthBasis: widget.textWidthBasis,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder description) {
    super.debugFillProperties(description);
  }
}

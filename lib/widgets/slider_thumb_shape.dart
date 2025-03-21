import 'package:flutter/material.dart';

class RoundedRectangleSliderThumbShape extends SliderComponentShape {
  final double enabledThumbRadius;
  final BorderRadius borderRadius;

  const RoundedRectangleSliderThumbShape({
    required this.enabledThumbRadius,
    required this.borderRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(enabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Rect rect = Rect.fromCenter(
      center: center,
      width: enabledThumbRadius * 2,
      height: enabledThumbRadius * 2,
    );

    final Paint paint = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.white
      ..style = PaintingStyle.fill;

    // 绘制边框
    final Paint borderPaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius.topLeft,
        topRight: borderRadius.topRight,
        bottomLeft: borderRadius.bottomLeft,
        bottomRight: borderRadius.bottomRight,
      ),
      paint,
    );

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius.topLeft,
        topRight: borderRadius.topRight,
        bottomLeft: borderRadius.bottomLeft,
        bottomRight: borderRadius.bottomRight,
      ),
      borderPaint,
    );
  }
}

class RoundedRectangleRangeSliderThumbShape extends RangeSliderThumbShape {
  final double enabledThumbRadius;
  final BorderRadius borderRadius;

  const RoundedRectangleRangeSliderThumbShape({
    required this.enabledThumbRadius,
    required this.borderRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(enabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop = false,
    TextDirection? textDirection,
    required SliderThemeData sliderTheme,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final Canvas canvas = context.canvas;

    final Rect rect = Rect.fromCenter(
      center: center,
      width: enabledThumbRadius * 2,
      height: enabledThumbRadius * 2,
    );

    final Paint paint = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.white
      ..style = PaintingStyle.fill;

    // 绘制边框
    final Paint borderPaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius.topLeft,
        topRight: borderRadius.topRight,
        bottomLeft: borderRadius.bottomLeft,
        bottomRight: borderRadius.bottomRight,
      ),
      paint,
    );

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius.topLeft,
        topRight: borderRadius.topRight,
        bottomLeft: borderRadius.bottomLeft,
        bottomRight: borderRadius.bottomRight,
      ),
      borderPaint,
    );
  }
}

class RectangularRangeSliderTrackShape extends RangeSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 2;
    final double trackLeft = offset.dx +
        2 *
            (sliderTheme.thumbShape
                    ?.getPreferredSize(isEnabled, isDiscrete)
                    .width ??
                0);
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width - 2 * trackLeft;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
    double additionalActiveTrackHeight = 0,
  }) {
    if (sliderTheme.trackHeight == 0) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final activeRect = Rect.fromLTRB(
      startThumbCenter.dx,
      trackRect.top,
      endThumbCenter.dx,
      trackRect.bottom,
    );

    final inactiveRectLeft = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );

    final inactiveRectRight = Rect.fromLTRB(
      endThumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    final Paint activePaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? Colors.blue;
    final Paint inactivePaint = Paint()
      ..color =
          sliderTheme.inactiveTrackColor ?? Colors.grey.withValues(alpha: .5);

    context.canvas.drawRect(inactiveRectLeft, inactivePaint);
    context.canvas.drawRect(activeRect, activePaint);
    context.canvas.drawRect(inactiveRectRight, inactivePaint);
  }
}

class RoundRangeSliderTickMarkShape extends RangeSliderTickMarkShape {
  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
  }) {
    return Size.fromRadius(2);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    required TextDirection textDirection,
  }) {}
}

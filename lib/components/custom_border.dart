import 'package:flutter/material.dart';

class CustomGradient extends CustomPainter {
  CustomGradient({
    required this.gradient,
    required this.sWidth,
    required this.bRadius,
    this.navbar,
  });

  final Gradient gradient;
  final double sWidth;
  final Paint p = Paint();
  final double bRadius;
  final bool? navbar;

  @override
  void paint(Canvas canvas, Size size) {
    Rect innerRect = Rect.fromLTRB(
        sWidth, sWidth, size.width - sWidth, size.height - sWidth);
    Rect innerRect2 = Rect.fromLTRB(
        sWidth, sWidth, size.width - sWidth, size.height - sWidth + 5);
    Rect outerRect = Offset.zero & size;
    RRect innerRoundedRect =
        RRect.fromRectAndRadius(innerRect, Radius.circular(bRadius));
    RRect outerRoundedRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(bRadius));

    RRect innerRoundedRect2 = RRect.fromRectAndCorners(innerRect2,
        topLeft: Radius.circular(bRadius),
        topRight: Radius.circular(bRadius),
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero);
    RRect outerRoundedRect2 = RRect.fromRectAndCorners(outerRect,
        topLeft: Radius.circular(bRadius),
        topRight: Radius.circular(bRadius),
        bottomLeft: Radius.zero,
        bottomRight: Radius.zero);

    p.shader = gradient.createShader(outerRect);
    Path borderPath = _calculateBorderPath(outerRoundedRect, innerRoundedRect);
    Path borderPath2 =
        _calculateBorderPath(outerRoundedRect2, innerRoundedRect2);
    navbar != null
        ? canvas.drawPath(borderPath2, p)
        : canvas.drawPath(borderPath, p);
  }

  Path _calculateBorderPath(RRect outerRect, RRect innerRect) {
    Path outerRectPath = Path()..addRRect(outerRect);
    Path innerRectPath = Path()..addRRect(innerRect);
    return Path.combine(PathOperation.difference, outerRectPath, innerRectPath);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

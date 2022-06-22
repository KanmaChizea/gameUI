import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  final Widget child;
  final double? borderRadius;
  final double blur;
  const BlurBackground({
    Key? key,
    required this.child,
    this.borderRadius,
    required this.blur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: child,
      ),
    );
  }
}

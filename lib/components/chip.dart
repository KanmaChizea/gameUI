import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Widget? child;
  final bool? isDetails;
  const CustomChip({
    Key? key,
    required this.label,
    this.child,
    this.isDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurBackground(
      blur: 2.68,
      child: CustomPaint(
        painter: CustomGradient(bRadius: 3.55, sWidth: 0.2, gradient: stroke3),
        child: Container(
          padding: isDetails == null
              ? const EdgeInsets.symmetric(horizontal: 9, vertical: 4)
              : const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.55),
              gradient: bwGradient,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 78.95, offset: Offset(0, 39.47), color: shadow2)
              ]),
          child: child ??
              Text(
                label,
                style:
                    header3.copyWith(fontSize: isDetails != null ? 12 : 4.74),
              ),
        ),
      ),
    );
  }
}

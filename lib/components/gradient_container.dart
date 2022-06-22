import 'package:dejavus_designs/components/custom_border.dart';
import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {
  CustomGradientContainer(
      {Key? key,
      required gradient,
      required this.child,
      this.sWidth = 3,
      this.bRadius = 36, // Add border radius declaration
      this.padding = 12 // Add padding declaration
      })
      : painter = CustomGradient(
            gradient: gradient,
            sWidth: sWidth,
            bRadius: bRadius // Add border radius declaration
            ),
        super(key: key);

  final CustomGradient painter;
  final Widget child;
  final double sWidth;
  final double bRadius; // Add border radius
  final double padding; // Add padding

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: painter,
        child: Container(
            // Add container declaration
            padding: EdgeInsets.all(padding), // Add padding declaration
            child: child));
  }
}

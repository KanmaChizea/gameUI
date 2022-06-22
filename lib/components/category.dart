import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';

class BuildCategory extends StatelessWidget {
  final String imagePath;
  const BuildCategory({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 146,
      width: 223,
      child: Stack(children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: BlurBackground(
              blur: 6.79,
              child: CustomPaint(
                painter:
                    CustomGradient(bRadius: 20, sWidth: 2, gradient: stroke3),
                child: Container(
                  height: 131,
                  width: 197,
                  decoration: BoxDecoration(
                      gradient: Gradient.lerp(greyGradient, whiteGradient, 0.5),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 100),
                            blurRadius: 200,
                            color: shadow2)
                      ]),
                ),
              )),
        ),
        Positioned(top: 0, left: 0, child: Image.asset(imagePath)),
        Positioned(
            right: 12,
            bottom: 8,
            child: Image.asset('lib/assets/images/logo.png'))
      ]),
    );
  }
}

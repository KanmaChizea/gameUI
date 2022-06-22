import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';

class BuildDetailsImage extends StatelessWidget {
  final String imagePath;
  const BuildDetailsImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurBackground(
        blur: 6.79,
        child: Container(
          width: 216,
          height: 155,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            border: Border.all(
                width: 1,
                color: Color.lerp(Color(0x1A2F2F2F), Color(0xFFEAEAEA), 0.5)!),
            boxShadow: const [
              BoxShadow(offset: Offset(0, 100), blurRadius: 200, color: shadow2)
            ],
          ),
          // child: Image.asset(
          //   imagePath,
          //   fit: BoxFit.fill,
          // )
        ));
  }
}

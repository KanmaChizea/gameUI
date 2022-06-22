import 'dart:ui';

import 'package:dejavus_designs/components/custom_border.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class BuildAvi extends StatelessWidget {
  const BuildAvi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomGradient(
        gradient: stroke1,
        sWidth: 5,
        bRadius: 30,
      ),
      child: Container(
        alignment: Alignment.topLeft,
        height: 54,
        width: 48,
        decoration:
            const BoxDecoration(gradient: avifill, shape: BoxShape.circle),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.79, sigmaY: 6.79),
          child: const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('lib/assets/images/avi2.png')),
        ),
      ),
    );
  }
}

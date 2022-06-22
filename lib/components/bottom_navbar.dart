import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';
import 'navbar_items.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlurBackground(
            blur: 11,
            borderRadius: 31,
            child: CustomPaint(
                painter: CustomGradient(
                    bRadius: 31, sWidth: 1, gradient: stroke5, navbar: true),
                child: Opacity(
                    opacity: 0.05,
                    child: Container(
                        height: 81,
                        decoration: const BoxDecoration(
                            gradient: greyGradient,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 26),
                                  blurRadius: 22,
                                  color: shadow2)
                            ]))))),
        SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              NavBarItem(
                  iconPath: 'lib/assets/icons/video.svg',
                  label: 'Stream',
                  isSelected: false),
              NavBarItem(
                  iconPath: 'lib/assets/icons/home-2.svg',
                  label: 'Home',
                  isSelected: true),
              NavBarItem(
                  iconPath: 'lib/assets/icons/game.svg',
                  label: 'Match',
                  isSelected: false),
            ],
          ),
        )
      ],
    );
  }
}

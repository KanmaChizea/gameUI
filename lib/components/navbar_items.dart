import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  const NavBarItem({
    Key? key,
    required this.iconPath,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        children: [
          const SizedBox(height: 18),
          SvgPicture.asset(iconPath),
          const SizedBox(height: 10),
          Text(
            label,
            style: isSelected ? body3.copyWith(color: Colors.white) : body3,
          )
        ],
      ),
    );
  }
}

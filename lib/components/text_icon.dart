import 'package:flutter/material.dart';

import '../constant.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const TextIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        color: orange,
        size: 10,
      ),
      const SizedBox(width: 4),
      Text(
        text,
        style: body2,
      )
    ]);
  }
}

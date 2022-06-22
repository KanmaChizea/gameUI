import 'package:flutter/material.dart';

import 'chip.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
    required this.categories,
    this.isDetail,
  }) : super(key: key);

  final List<String> categories;
  final bool? isDetail;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomChip(label: categories[0], isDetails: isDetail),
        CustomChip(label: categories[1], isDetails: isDetail),
        CustomChip(label: categories[2], isDetails: isDetail),
      ],
    );
  }
}

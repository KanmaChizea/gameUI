import 'package:flutter/material.dart';

import '../constant.dart';
import 'dot_indicator.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 2,
      length: 5,
      child: TabBar(
          isScrollable: true,
          //labelPadding: EdgeInsets.zero,
          indicator: DotIndicator(),
          unselectedLabelStyle: header2,
          labelStyle: header3,
          tabs: [
            Tab(text: 'Strategy'),
            Tab(text: 'Race'),
            Tab(text: 'FPS'),
            Tab(text: 'Adventure'),
            Tab(text: 'Arcade'),
          ]),
    );
  }
}

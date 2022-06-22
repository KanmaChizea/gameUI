import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlurBackground(
            blur: 760,
            child: Opacity(
                opacity: 0.2,
                child: CustomPaint(
                    painter: CustomGradient(
                        bRadius: 10, gradient: stroke2, sWidth: 2),
                    child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(26, 26),
                                  blurRadius: 22,
                                  color: shadow1)
                            ],
                            gradient: searchGradient))))),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 64,
            height: 45,
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'Search for a battle',
                  hintStyle: search,
                  suffixIcon: Icon(
                    Icons.search,
                    size: 16,
                    color: whiteColor,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

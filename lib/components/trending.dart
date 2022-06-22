import 'package:dejavus_designs/screens/details.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'category_row.dart';
import 'custom_border.dart';
import 'text_icon.dart';

class BuildTrending extends StatelessWidget {
  final bool startLeft;
  final String title;
  final List<String> categories;
  final String stars;
  final String views;
  final String imagePath;
  const BuildTrending({
    Key? key,
    required this.startLeft,
    required this.title,
    required this.categories,
    required this.stars,
    required this.views,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Details(
              imagePath: imagePath, categories: categories, title: title))),
      child: SizedBox(
        height: 139,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: BlurBackground(
                blur: 6.79,
                child: CustomPaint(
                  painter:
                      CustomGradient(bRadius: 20, sWidth: 2, gradient: stroke4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 114,
                      width: MediaQuery.of(context).size.width - 53,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: greyGradient,
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 20,
                                offset: Offset(0, 100),
                                color: shadow2)
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: startLeft ? 0 : null,
                top: 0,
                right: startLeft ? null : 0,
                child: Image.asset(imagePath)),
            Positioned(
                right: startLeft ? 43 : null,
                left: startLeft ? null : 43,
                top: 56,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: startLeft
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.end,
                        style: header4,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 118,
                        height: 14,
                        child: CategoryRow(categories: categories),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: startLeft
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          TextIcon(
                            text: stars,
                            icon: Icons.star,
                          ),
                          const SizedBox(width: 14),
                          TextIcon(
                              text: views, icon: Icons.remove_red_eye_outlined)
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:dejavus_designs/components/bottom_navbar.dart';
import 'package:dejavus_designs/components/category_row.dart';

import '../components/back_button.dart';
import '../components/blur_background.dart';
import '../components/custom_border.dart';
import '../components/details_image.dart';
import '../components/text_icon.dart';
import '../constant.dart';

class Details extends StatelessWidget {
  final String imagePath;
  final List<String> categories;
  final String title;
  const Details({
    Key? key,
    required this.imagePath,
    required this.categories,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const descriptionText =
        'After quitting Third Echelon, Fisher heads to Valletta,\nMalta, to investigate rumors that the hit-and-run death\nof his daughter, Sarah, might not have been an accident.\nSuddenly, Anna "Grim" Grímsdóttir, Sam\'s former\ncolleague, contacts him and warns him of an imminent\nattack by a group of hitmen.';

    return Container(
        decoration: BoxDecoration(gradient: bgGradient),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: const BottomNavBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3 + 59,
                    child: Stack(children: [
                      const CustomBackButton(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: BlurBackground(
                              blur: 6.79,
                              child: CustomPaint(
                                  painter: CustomGradient(
                                      bRadius: 20,
                                      sWidth: 1,
                                      gradient: stroke5),
                                  child: Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              gradient: dradient,
                                              boxShadow: const [
                                                BoxShadow(
                                                    offset: Offset(0, 100),
                                                    blurRadius: 200,
                                                    color: shadow2)
                                              ])))))),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: header4,
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: const [
                                      TextIcon(
                                        text: '4.9',
                                        icon: Icons.star,
                                      ),
                                      SizedBox(width: 14),
                                      TextIcon(
                                          text: '595k',
                                          icon: Icons.remove_red_eye_outlined)
                                    ],
                                  )
                                ],
                              ),
                              BlurBackground(
                                blur: 4.06,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 21, vertical: 16),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        gradient: orangeGradient,
                                        boxShadow: const [
                                          BoxShadow(
                                              offset: Offset(0, 59.57),
                                              blurRadius: 119.75,
                                              color: Color(0xDDEF3E08))
                                        ]),
                                    child: Text('Play Now',
                                        style: header1.copyWith(
                                            color: const Color(0xFFF2F2F2),
                                            fontSize: 12))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 24),
                  CategoryRow(categories: categories, isDetail: true),
                  const SizedBox(height: 18),
                  const Text(descriptionText, style: body1),
                  const SizedBox(height: 18),
                  SizedBox(
                      height: 156,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            BuildDetailsImage(
                                imagePath: 'lib/assets/images/des1.png'),
                            SizedBox(width: 18),
                            BuildDetailsImage(
                                imagePath: 'lib/assets/images/des2.png'),
                          ]))
                ]),
              ),
            )));
  }
}

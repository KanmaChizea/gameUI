import 'package:flutter/material.dart';

import '../constant.dart';
import 'blur_background.dart';
import 'custom_border.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 50,
        height: 50,
        child: BlurBackground(
            blur: 6.79,
            child: CustomPaint(
              painter:
                  CustomGradient(bRadius: 10, sWidth: 1, gradient: stroke5),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: buttonGradient,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 200,
                            offset: Offset(0, 100),
                            color: shadow2)
                      ]),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )),
            )));
  }
}

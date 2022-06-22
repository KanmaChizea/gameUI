import 'package:flutter/material.dart';

//gradients
final LinearGradient bgGradient =
    verticalGradient([const Color(0xF51C0A0A), const Color(0xFF040404)]);
const bwGradient =
    LinearGradient(colors: [Color(0x82FFFFFF), Color(0x1AD0D0D0)]);
const orangeGradient =
    LinearGradient(colors: [Color(0xFFFF6231), Color(0x7D852201)]);
const whiteGradient =
    LinearGradient(colors: [Color(0x1A2F2F2F), Color(0xE5FFFFFF)]);
const greyGradient =
    LinearGradient(colors: [Color(0xFF060606), Color(0x82574949)]);
const buttonGradient =
    LinearGradient(colors: [Color(0x82D6D6D6), Color(0x00E8E8E8)]);
const searchGradient =
    LinearGradient(colors: [Color(0xE5FFFFFF), Color(0x1AFFF5F4)]);
const dradient = LinearGradient(colors: [Color(0xFF060606), Color(0x82574949)]);
const avifill = LinearGradient(colors: [Color(0xff5844ec), Color(0xffd48737)]);
final LinearGradient stroke1 =
    verticalGradient([const Color(0x0F201210), const Color(0x7DCF3200)]);
const stroke2 = LinearGradient(colors: [Color(0x94E4E4E4), Color(0x1A2F2F2F)]);
const stroke3 = LinearGradient(colors: [Color(0xFFDEDEDE), Color(0x1A2F2F2F)]);
const stroke4 = LinearGradient(colors: [Color(0xFFDDDDDD), Color(0x1A2F2F2F)]);
const stroke5 = LinearGradient(colors: [Color(0x1A2F2F2F), Color(0xFFEAEAEA)]);

//colors
const whiteColor = Color(0xFFF8F8F8);
const orange = Color(0xFFDF8C19);
const shadow1 = Color(0x1A373737);
const shadow2 = Color(0x78131313);

//typography
const search =
    TextStyle(fontSize: 14, fontFamily: 'Nunito', color: Color(0xFFE1E1E1));
const header1 = TextStyle(
    fontSize: 30,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w700,
    color: Color(0xFFDEDEDE));
const header2 = TextStyle(
    fontSize: 14,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w400,
    color: Color(0xFF717171));
const header3 = TextStyle(
    fontSize: 16,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF));
const header4 = TextStyle(
    fontSize: 21,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w700,
    color: Color(0xFFF4F4F4));
const body1 = TextStyle(
    fontSize: 12,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w400,
    height: 2,
    color: Color(0xFFE0D4D4));
const body2 = TextStyle(
    fontSize: 9.12,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w400,
    color: Color(0xFFB7B1B1));
const body3 = TextStyle(
    fontSize: 12,
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w500,
    color: Color(0xFF707070));
verticalGradient(List<Color> colors) {
  return LinearGradient(
      colors: colors, begin: Alignment.topCenter, end: Alignment.bottomCenter);
}

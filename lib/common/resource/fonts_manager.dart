import 'package:flutter/material.dart';

class FontFamily {
  static const String openSans = "OpenSans";
  static const String rubik = "Rubik";
  static const String inter = "Inter";
  static const String itim = "Itim";
  static const String poppins = "Poppins";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

class FontSize {
  static const double s2 = 4.0;
  static const double s4 = 4.0;
  static const double s5 = 5.0;
  static const double s6 = 6.0;
  static const double s7 = 7.0;
  static const double s8 = 8.0;
  static const double s9 = 9.0;
  static const double s10 = 10.0;
  static const double s11 = 11.0;
  static const double s12 = 12.0;
  static const double s13 = 13.0;
  static const double s14 = 14.0;
  static const double s15 = 15.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s19 = 19.0;
  static const double s20 = 20.0;
  static const double s21 = 21.0;
  static const double s22 = 22.0;
  static const double s23 = 23.0;
  static const double s24 = 24.0;
  static const double s25 = 25.0;
  static const double s26 = 26.0;
  static const double s27 = 27.0;
  static const double s28 = 28.0;
  static const double s29 = 29.0;
  static const double s30 = 30.0;
  static const double s31 = 31.0;
  static const double s32 = 32.0;
  static const double s33 = 33.0;
  static const double s34 = 34.0;
  static const double s35 = 35.0;
  static const double s36 = 36.0;
  static const double s37 = 37.0;
  static const double s38 = 38.0;
  static const double s39 = 39.0;
  static const double s40 = 40.0;
  static const double s41 = 41.0;
  static const double s42 = 42.0;
  static const double s60 = 60.0;

  static double getSize(BuildContext context, double baseSize) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide /
        MediaQuery.of(context).size.width;
    return baseSize * shortestSide;
  }
}

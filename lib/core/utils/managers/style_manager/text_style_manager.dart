import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';

class TextStyleManager {
  static double adaptiveFontSize(double size) {
    double scaleFactor = ScreenUtil().screenWidth > 600 ? 0.6 : 1.0;
    return (size * scaleFactor).sp;
  }

  // ================ Test Style 10 ================
  static TextStyle style10RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(10),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style10RegBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(10),
    fontWeight: FontWeight.w400,
    color: ColorManager.lightBlack,
  );
  static TextStyle style10ReglightBlue = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(10),
    fontWeight: FontWeight.w400,
    color: ColorManager.babyBlue,
  );
  static TextStyle style10BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(10),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style10BoldDarkPurple = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(10),
    fontWeight: FontWeight.w700,
    color: ColorManager.darkPurple,
  );
  // ================ Test Style 11 ================

  static TextStyle style11LightWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(11),
    fontWeight: FontWeight.w200,
    color: ColorManager.white,
  );
  // ================ Test Style 12 ================
  static TextStyle style12BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(12),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style12RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(12),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style12RegBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(12),
    fontWeight: FontWeight.w400,
    color: ColorManager.black,
  );
  static TextStyle style12BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(12),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );
  static TextStyle style12RegDeepGrey = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(12),
    fontWeight: FontWeight.w400,
    color: const Color(0xff292724),
  );
  // ================ Test Style 14 ================
  static TextStyle style14RegLightBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(14),
    fontWeight: FontWeight.w400,
    color: ColorManager.lightBlack,
  );
  static TextStyle style14RegBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(14),
    fontWeight: FontWeight.w400,
    color: ColorManager.black,
  );
  static TextStyle style14RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(14),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style14BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(14),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style14BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(14),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );
  // ================ Test Style 16 ================

  static TextStyle style16BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style16BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );
  static TextStyle style16BoldLightBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w700,
    color: ColorManager.lightBlack,
  );
  static TextStyle style16RegBrown = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w400,
    color: ColorManager.brown,
  );
  static TextStyle style16RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style16RegBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w400,
    color: ColorManager.black,
  );
  static TextStyle style16RegLightBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w400,
    color: ColorManager.lightBlack,
  );
  static TextStyle style16LightWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w200,
    color: ColorManager.white,
  );
  static TextStyle style16LightBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(16),
    fontWeight: FontWeight.w200,
    color: ColorManager.black,
  );
  // ================ Test Style 18 ================
  static TextStyle style18BoldBrown = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(18),
    fontWeight: FontWeight.w700,
    color: ColorManager.brown,
  );
  static TextStyle style18BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(18),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style18BoldOrange = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(18),
    fontWeight: FontWeight.w700,
    color: ColorManager.lightOrange,
  );
  static TextStyle style18RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(18),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style18RegBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(18),
    fontWeight: FontWeight.w400,
    color: ColorManager.black,
  );
  // ================ Test Style 19 ================
  static TextStyle style19RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(19),
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  // ================ Test Style 20 ================
  static TextStyle style20RegLightBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(20),
    fontWeight: FontWeight.w400,
    color: ColorManager.lightBlack,
  );
  static TextStyle style20BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(20),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style20BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(20),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );

  // ================ Test Style 24 ================
  static TextStyle style24BoldBrown = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(24),
    fontWeight: FontWeight.w700,
    color: ColorManager.brown,
  );
  static TextStyle style24BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(24),
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style29BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(29),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );

  static TextStyle style32BoldBlack = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: adaptiveFontSize(32),
    fontWeight: FontWeight.w700,
    color: ColorManager.black,
  );
}

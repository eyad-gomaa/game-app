import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/color_manager/color_manager.dart';

class TextStyleManager {
  static TextStyle style10RegWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorManager.white,
  );
  static TextStyle style10BoldDarkPurple = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    color: ColorManager.darkPurple,
  );
  static TextStyle style12BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
  static TextStyle style12RegDeepGrey = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xff292724),
  );
  static TextStyle style16BoldWhite = TextStyle(
    fontFamily: Keys.bukraFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: ColorManager.white,
  );
}

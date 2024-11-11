import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';

class ColorGradientManager {
  static const LinearGradient orangeGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        ColorManager.orange,
        ColorManager.orange,
        ColorManager.lightOrange,
      ]);

  static const LinearGradient pinkBlueGradient = LinearGradient(colors: [
    ColorManager.darkPink,
    ColorManager.purple,
    ColorManager.blue,
  ]);
  static LinearGradient darkPinkGradient = LinearGradient(colors: [
    ColorManager.darkPink.withOpacity(0.7),
    ColorManager.darkPink,
  ]);
  static LinearGradient silverGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        ColorManager.grey,
        ColorManager.white,
        ColorManager.darkGrey.withOpacity(0.4),
      ]);
  static LinearGradient darkPurpleDarkGreyGradient =
      const LinearGradient(colors: [
    ColorManager.darkPurple,
    ColorManager.darkGrey,
  ]);
  static LinearGradient paidMessageGradient = const LinearGradient(colors: [
    Color(0xff444142),
    Color(0xffB0B0B0),
    Color(0xffFEFEFE),
    Color(0xffB7B1B1),
    Color(0xff999999),
  ]);
  static LinearGradient mainButtonGradient = const LinearGradient(colors: [
    ColorManager.darkPink,
    ColorManager.darkPurple,
    ColorManager.lightBlue
  ]);
}

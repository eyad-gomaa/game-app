
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/utils/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/style_manager/text_style_manager.dart';
class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.w,
      width: 50.w,
      decoration: BoxDecoration(
        gradient: ColorGradientManager.silverGradient,
        border: GradientBoxBorder(
          gradient: ColorGradientManager.darkPurpleDarkGreyGradient,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
          child: Text(
        "LV. 4",
        style: TextStyleManager.style10BoldDarkPurple,
      )),
    );
  }
}
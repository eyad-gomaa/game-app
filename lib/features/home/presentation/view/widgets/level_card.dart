import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
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

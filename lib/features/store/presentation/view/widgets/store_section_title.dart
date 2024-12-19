import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class StoreSectionTitle extends StatelessWidget {
  const StoreSectionTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: context.responsiveWidth(60),
          vertical: context.responsiveHeight(16)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: const GradientBoxBorder(
              width: 2,
              gradient: LinearGradient(colors: [
                Color(0xff757575),
                Color(0xffFEFEFE),
                Color(0xff4E4E4E),
              ]))),
      child: Text(title, style: TextStyleManager.style16BoldWhite),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/style_manager/text_style_manager.dart';
class HomeRankContainer extends StatelessWidget {
  const HomeRankContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 73.w,
      // height: 22.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: ColorGradientManager.darkPinkGradient),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "1,000",
            style: TextStyleManager.style12BoldWhite,
          ),
          const Gap(4),
          SvgPicture.asset(IconManager.rankStar)
        ],
      ),
    );
  }
}
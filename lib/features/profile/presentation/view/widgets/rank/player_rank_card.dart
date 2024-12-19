import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class PlayerRankCard extends StatelessWidget {
  const PlayerRankCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: ColorManager.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "$index",
                style: TextStyleManager.style14BoldWhite,
              ),
              Gap(12.w),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(context.responsiveHeight(32)),
                child: Image.asset(
                  ImageManager.avatar,
                  height: context.responsiveHeight(32),
                ),
              ),
              Gap(12.w),
              Text(
                "أحمد فوزي",
                style: TextStyleManager.style14BoldWhite,
              ),
            ],
          ),
          const BorderedText(text: "1658457")
        ],
      ),
    );
  }
}

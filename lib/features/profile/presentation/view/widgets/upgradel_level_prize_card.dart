import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class UpgradeLevelPrizeCard extends StatelessWidget {
  const UpgradeLevelPrizeCard({
    super.key,
    this.delay,
  });
  final int? delay;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                color: Colors.black.withOpacity(0.25),
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          color: ColorManager.lightBlue.withOpacity(0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ==== level icon ====
                  SizedBox(
                    height: context.responsiveWidth(55),
                    width: context.responsiveWidth(47),
                    child: Stack(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              height: context.responsiveWidth(55),
                              width: context.responsiveWidth(47),
                              IconManager.profileLevel,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              "2",
                              style: TextStyleManager.style14BoldBlack,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(16.w), // =====> horizontal seperator
                  // ==== level data ====
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ==== level ====
                      Text(
                        "يصل مستواك إلى 2",
                        style: TextStyleManager.style10RegBlack,
                      ),
                      Gap(8.h),
                      // ==== coins ====
                      Row(
                        children: [
                          // === coin icon ===
                          Image.asset(
                            IconManager.coin,
                            height: 18.h,
                            width: 18.h,
                          ),
                          const Gap(5),
                          // === coins count ===
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderedText(
                                text: "500",
                                style: TextStyleManager.style12BoldWhite,
                              ),
                              Text(
                                "المستوى التالي",
                                style: TextStyleManager.style10ReglightBlue,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // ==== next level text ==== (optional in first level only)
        ],
      ),
    ).animate(delay: Duration(milliseconds: delay ?? 0)).scaleX();
  }
}

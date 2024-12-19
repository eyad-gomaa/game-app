import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_from_top_animation.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/upgradel_level_prize_card.dart';

void showUpgradeLevelPrizeDialog(BuildContext context) {
  // double screenWidth = context.width;
  // double screenHeight = context.height;
  // double designHeight = 932;
  // double designWidth = 430;

  // double responsiveWidth(double widgetWidth) {
  //   return screenWidth * (widgetWidth / designWidth);
  // }

  // double responsiveHeight(double widgetHeight) {
  //   return screenHeight * (widgetHeight / designHeight);
  // }

  showDialog(
    context: context,
    builder: (context) => Dialog(
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                border: const GradientBoxBorder(
                  width: 8,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.decal,
                    colors: [
                      Color(0xffC39445),
                      Color(0xffE5BF6D),
                      Color(0xffDDAF5A),
                      Color(0xffF4C56C),
                      Color(0xffD1A251),
                      Color(0xff9A6A24),
                    ],
                  ),
                ),
              ),
              child: Container(
                width: context.responsiveWidth(329),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Gap(context.responsiveHeight(102) / 1.5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "مكافأة تطور المستوى",
                          style: TextStyleManager.style20BoldBlack,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "قم بترقية مستواك لفتح المزيد من المكافآت",
                              style: TextStyleManager.style12RegBlack,
                            ),
                            Gap(8.w),
                            ScaleOnTap(
                              onTap: () {},
                              child: SvgPicture.asset(
                                IconManager.info,
                                fit: BoxFit.scaleDown,
                                width: 20.w,
                                height: 20.w,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(26.h),
                    Column(
                      children: [
                        const UpgradeLevelPrizeCard(delay: 100),
                        Gap(12.h),
                        const UpgradeLevelPrizeCard(delay: 200),
                        Gap(12.h),
                        const UpgradeLevelPrizeCard(delay: 300),
                        Gap(12.h),
                        const UpgradeLevelPrizeCard(delay: 400),
                        Gap(12.h),
                        const UpgradeLevelPrizeCard(delay: 500),
                        Gap(32.h),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Reusable SlidingImage Widget
            Positioned(
              top: -(context.responsiveHeight(102) / 2),
              child: SlidingfromTopTransition(
                child: Image.asset(
                  ImageManager.levelUpBack1,
                  width: context.responsiveWidth(390),
                  height: context.responsiveHeight(102),
                ),
              ),
            ),
            Positioned(
              top: -(context.responsiveHeight(147) / 1.5),
              child: SlidingfromTopTransition(
                delay: 300,
                child: Image.asset(
                  ImageManager.levelUpBack2,
                  width: context.responsiveWidth(141),
                  height: context.responsiveHeight(147),
                ),
              ),
            ),
            Positioned(
              top: -context.responsiveHeight(50),
              child: SlidingfromTopTransition(
                delay: 600,
                child: RepeatingScaleAnimation(
                  scaleEnd: 1.2,
                  child: Image.asset(
                    ImageManager.levelUpStar,
                    width: context.responsiveWidth(50),
                    height: context.responsiveHeight(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

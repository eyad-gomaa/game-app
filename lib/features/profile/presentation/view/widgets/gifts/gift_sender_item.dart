import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/shared/widgets/icons/blue_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class GiftSenderItem extends StatelessWidget {
  const GiftSenderItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              IconManager.giftRankIcon,
              height: context.responsiveHeight(38),
            ),
            Text(
              "${index + 1}",
              style: TextStyleManager.style24BoldWhite,
            )
          ],
        ),
        Gap(15.r),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            decoration: BoxDecoration(
                color: ColorManager.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.black.withOpacity(0.16),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                    blurStyle: BlurStyle.outer,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AvatarWithFrame(
                      size: context.responsiveHeight(47),
                    ),
                    Gap(9.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "توربيني 22",
                          style: TextStyleManager.style12BoldBlack,
                        ),
                        const Gap(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              IconManager.coin,
                              height: context.responsiveHeight(18),
                            ),
                            const Gap(5),
                            BorderedText(
                              text: "10",
                              style: TextStyleManager.style12BoldWhite,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                BlueButton(
                    text: "إضافة",
                    width: context.responsiveWidth(96),
                    height: context.responsiveHeight(40),
                    onTap: () {})
              ],
            ),
          ),
        ),
      ],
    );
  }
}

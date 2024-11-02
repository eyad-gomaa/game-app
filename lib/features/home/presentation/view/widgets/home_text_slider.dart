
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_infinite_marquee/flutter_infinite_marquee.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
class HomeTextSlider extends StatelessWidget {
  const HomeTextSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: 50.h,
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            border: GradientBoxBorder(
                gradient: ColorGradientManager.darkPurpleDarkGreyGradient,
                width: 1),
            gradient: ColorGradientManager.paidMessageGradient),
        child: Row(
          children: [
            Expanded(
              child: InfiniteMarquee(
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Row(
                    children: [
                      Row(
                        children: [
                          const AvatarWithFrame(
                            size: 30,
                          ),
                          Gap(6.w),
                          Text(
                            'رامي الهادي :',
                            style: TextStyleManager.style12RegDeepGrey,
                          ),
                          Text(
                            'هذه رسالة مدفوعة مسجلة',
                            style: TextStyleManager.style12RegDeepGrey,
                          ),
                        ],
                      ),
                      Container(
                        width: 3.w,
                        height: 22.h,
                        margin: EdgeInsets.symmetric(horizontal: 13.w),
                        decoration: BoxDecoration(
                            color: ColorManager.darkGrey,
                            borderRadius: BorderRadius.circular(30)),
                      )
                    ],
                  ));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: LocalizationManager.isArabic() ? 10 : 0,
                  right: LocalizationManager.isArabic() ? 0 : 10),
              child: SvgPicture.asset(
                IconManager.addMessage,
                height: 32.h,
                width: 32.h,
              ),
            )
          ],
        )).animate().scaleXY();
  }
}
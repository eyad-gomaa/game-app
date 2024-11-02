
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_cart_icon.dart';
class CoinsCard extends StatelessWidget {
  const CoinsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: LocalizationManager.isArabic() ? 13.w : 0,
          left: LocalizationManager.isArabic() ? 0 : 13.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: LocalizationManager.isArabic()
                ? Alignment.centerLeft
                : Alignment.centerRight,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: LocalizationManager.isArabic() ? 13.w : null,
                right: LocalizationManager.isArabic() ? null : 13.w,
                child: Container(
                  padding: EdgeInsets.only(
                      left: LocalizationManager.isArabic() ? 13.w + 9.w : 0,
                      right: LocalizationManager.isArabic()
                          ? 0
                          : 13.w + 9.w), // width: 104.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    gradient: ColorGradientManager.orangeGradient,
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Container(
                          width: 25.h,
                          height: 25.h,
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(.36),
                              ),
                              borderRadius: BorderRadius.circular(100)),
                          child: SvgPicture.asset(IconManager.coin),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: LocalizationManager.isArabic() ? 0 : 8.w,
                            left: LocalizationManager.isArabic() ? 8.w : 0),
                        child: Align(
                            alignment: LocalizationManager.isArabic()
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Text(
                              "4.520",
                              style: TextStyleManager.style12BoldWhite,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  IconManager.plus,
                  width: 26.w,
                  height: 26.w,
                ),
              )
            ],
          ),
          Gap(16.w),
          const HomeCartIcon()
        ],
      ),
    );
  }
}
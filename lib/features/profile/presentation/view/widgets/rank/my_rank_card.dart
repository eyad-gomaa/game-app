import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';

class MyRankCard extends StatelessWidget {
  const MyRankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7.w, bottom: 7.w, right: 27.w, left: 53.w),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -1),
                color: ColorManager.black.withOpacity(0.2),
                blurRadius: 4)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r)),
          gradient: const LinearGradient(colors: [
            Color(0xffD9B3CB),
            Color(0xffCEBFD4),
            Color(0xffC0DBE5),
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const BorderedText(text: "7"),
              Container(
                width: 2,
                height: context.responsiveHeight(56),
                color: ColorManager.white.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 16),
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(context.responsiveHeight(40)),
                    child: Image.asset(
                      ImageManager.avatar,
                      height: context.responsiveHeight(40),
                    ),
                  ),
                  Gap(15.w),
                  const BorderedText(text: "أحمد فايز"),
                  Gap(8.w),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(context.responsiveHeight(20)),
                    child: Image.asset(
                      ImageManager.avatar,
                      height: context.responsiveHeight(20),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const BorderedText(text: "1658457"),
        ],
      ),
    );
  }
}

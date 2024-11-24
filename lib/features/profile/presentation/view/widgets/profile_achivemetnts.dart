import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/double_arrow.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container_with_title_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/user_profile_data.dart';
import 'package:zone_game_app/generated/l10n.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';

class ProfileAchivements extends StatelessWidget {
  
  const ProfileAchivements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return SlideInAnimation(
      delay: 4,
      child: ProfileViewContainerWithTitleCard(
        title: names.achievements,
        child: Column(
          children: [
            // =============  المهام  (missions) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.tasks,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                Gap(10.w),
                DoubleArrow(
                  onTap: () {},
                )
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // =============  الشارات  (badges) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.badges,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                const Gap(10),
                Row(
                  children: [
                    SizedBox(
                      height: 32.h,
                      child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(ImageManager.profileLevel),
                            );
                          }),
                    ),
                    Gap(10.w),
                    DoubleArrow(
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // =============  الترتيب  (ranking) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.rank,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                const Gap(10),
                Row(
                  children: [
                    SizedBox(
                      height: 32.h,
                      child: ListView.builder(
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Image.asset(ImageManager.profileLevel);
                          }),
                    ),
                    Gap(10.w),
                    DoubleArrow(
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // =============  مستوى سوبر  ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.superLevel,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                const Gap(10),
                Row(
                  children: [
                    Image.asset(
                      ImageManager.profileLevel,
                      height: 32.h,
                    ),
                    Gap(10.w),
                    Row(
                      children: [
                        Text(
                          names.superLevel,
                          style: TextStyleManager.style14RegLightBlack,
                        ),
                        Gap(4.w),
                        //   قيمه السوبر (super value)
                        BorderedText(
                          text: '0',
                          style: TextStyleManager.style16BoldWhite,
                        ),
                        Gap(10.w),
                        DoubleArrow(
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // =============  الهدايا (gifts) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الهدايا  ",
                  style: TextStyleManager.style14RegLightBlack,
                ),
                const Gap(10),
                Row(
                  children: [
                    SizedBox(
                      height: 32.h,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset(ImageManager.profileLevel),
                            );
                          }),
                    ),
                    Gap(10.w),
                    DoubleArrow(
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
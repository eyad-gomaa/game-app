import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
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

class ProfileGameCard extends StatelessWidget {
  const ProfileGameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);

    return SlideInAnimation(
      delay: 4,
      child: ProfileViewContainerWithTitleCard(
        title: names.game,
        child: Column(
          children: [
            // ============== المجموع (total) ======================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // المجموع (total)
                Row(
                  children: [
                    Text(
                      names.total,
                      style: TextStyleManager.style14RegLightBlack,
                    ),
                    Gap(10.w),
                    // قيمه المجموع (total value)
                    BorderedText(
                      text: '0',
                      style: TextStyleManager.style16BoldWhite,
                    ),
                  ],
                ),
                const Gap(10),
                //  احتمال الفوز (win probability)
                Row(
                  children: [
                    //
                    Text(
                      names.totalWinProbability,
                      style: TextStyleManager.style14RegLightBlack,
                    ),
                    Gap(10.w),
                    // النسبه المئوية (win probability value)
                    BorderedText(
                      text: '0.0%',
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
            const DashedSeperator(),
            Gap(13.h),
            // ============== الاشتراكات (subscriptions) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.subscriptions,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                DoubleArrow(
                  onTap: () {},
                )
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // ============== الأصدقاء (friends) ==================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.friends,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                DoubleArrow(
                  onTap: () {},
                )
              ],
            ),
            const DashedSeperator(),
            Gap(13.h),
            // =============== الأحداث (events) ================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names.events,
                  style: TextStyleManager.style14RegLightBlack,
                ),
                DoubleArrow(
                  onTap: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
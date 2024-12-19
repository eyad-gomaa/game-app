import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/show_upgrade_level_prize_dialog.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ProfielLevelCard extends StatelessWidget {
  const ProfielLevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInAnimation(
      child: ScaleOnTap(
        onTap: () {
          showUpgradeLevelPrizeDialog(context);
        },
        child: ProfileViewContainer(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Row(
            children: [
              Text(
                S.of(context).rank,
                style: TextStyleManager.style16RegLightBlack,
              ),
              const Gap(8),
              SvgPicture.asset(IconManager.gift),
              Gap(38.w +
                  15), //========> 38 is the gap width , 15 is half the level icon width
              Expanded(
                  child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: LinearProgressIndicator(
                          value: 0.7,
                          minHeight: context.height / 50,
                          backgroundColor: ColorManager.lightWhiteSade,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            ColorManager.babyBlue,
                          ),
                        ),
                      ),
                      Text(
                        "2/10",
                        style: TextStyleManager.style10BoldWhite,
                      ),
                    ],
                  ),
                  Positioned(
                    right: LocalizationManager.isArabic() ? -15 : null,
                    left: LocalizationManager.isArabic() ? null : -15,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          height: context.responsiveHeight(31.45),
                          width: context.responsiveWidth(31.45),
                          IconManager.profileLevel,
                        ),
                        Text(
                          "22",
                          style: TextStyleManager.style10BoldWhite,
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}

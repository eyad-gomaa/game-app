import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/user_profile_data.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ProfielLevelCard extends StatelessWidget {
  const ProfielLevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInAnimation(
      child: ProfileViewContainer(
          child: Row(
        children: [
          Text(
            "المستوى",
            style: TextStyleManager.style16RegLightBlack,
          ),
          const Gap(8),
          const Icon(Icons.add_box_outlined),
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
                      minHeight: 16.h,
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
                right: -15,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      ImageManager.profileLevel,
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
      )),
    );
  }
}
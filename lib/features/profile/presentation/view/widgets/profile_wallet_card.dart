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

class ProfileWalletCard extends StatelessWidget {
  const ProfileWalletCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInAnimation(
      delay: 3,
      child: ProfileViewContainerWithTitleCard(
          title: "المحفظة",
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("الرصيد"),
                Row(children: [
                  Text(
                    "إجمالي رصيدك",
                    style: TextStyleManager.style14RegLightBlack,
                  ),
                  Gap(10.w),
                  BorderedText(
                    text: '0.0',
                    style: TextStyleManager.style16BoldWhite,
                  ),
                  Gap(10.w),
                  DoubleArrow(
                    onTap: () {},
                  )
                ])
              ],
            )
          ])),
    );
  }
}

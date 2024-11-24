import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
import 'package:zone_game_app/generated/l10n.dart';
class UserProfileData extends StatelessWidget {
  const UserProfileData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 5,
          child: Image.asset(
            ImageManager.profielCover,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: (-(MediaQuery.sizeOf(context).width / 4)),
          left: 20,
          child: Column(
            children: [
              Stack(
                children: [
                  AvatarWithFrame(
                    size: MediaQuery.sizeOf(context).width / 5,
                  ),
                  SvgPicture.asset(
                    IconManager.vip,
                    width: MediaQuery.sizeOf(context).width / 15,
                  )
                ],
              ),
              const Gap(12),
              Text("كينج فارس", style: TextStyleManager.style16BoldLightBlack),
              const Gap(4),
              Text("ID : 8960984", style: TextStyleManager.style14RegLightBlack),
            ],
          ),
        )
      ],
    );
  }
}
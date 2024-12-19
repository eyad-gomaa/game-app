import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

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
          bottom: -((MediaQuery.sizeOf(context).height / 9) / 2),
          left: 20,
          child: SlideInAnimation(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AvatarWithFrame(
                      size: MediaQuery.sizeOf(context).height / 9,
                    ),
                    SvgPicture.asset(
                      IconManager.vip,
                      width: MediaQuery.sizeOf(context).height / 25,
                    ),
                    Positioned(
                      bottom: -(MediaQuery.sizeOf(context).height / 8) / 2,
                      right: 0,
                      left: 0,
                      child: Column(
                        children: [
                          Text("كينج فارس",
                              style: TextStyleManager.style16BoldLightBlack),
                          const Gap(4),
                          Text("ID : 8960984",
                              style: TextStyleManager.style14RegLightBlack),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

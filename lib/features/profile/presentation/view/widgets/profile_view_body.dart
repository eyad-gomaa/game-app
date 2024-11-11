import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.black.withOpacity(0.2),
        leading: const BackIcon(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: NotificationsIcon(),
          )
        ],
        pinned: true,
        title: Text(names.myAccount, style: TextStyleManager.style16BoldBlack),
        centerTitle: true,
        elevation: 0,
      ),
      SliverToBoxAdapter(
        child: Stack(
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
              bottom: (-(MediaQuery.sizeOf(context).width / 4.8)),
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
                  Column(
                    children: [
                      Text("data data"),
                      Text("data"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      const SliverToBoxAdapter(
        child: Row(children: [
          Icon(Icons.person, color: Colors.black),
          Gap(10),
          Icon(Icons.ac_unit_rounded, color: Colors.black),
        ]),
      ),
      SliverGap(MediaQuery.sizeOf(context).height / 5),
    ]);
  }
}

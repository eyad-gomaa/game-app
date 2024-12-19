import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_cart_icon.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_user_data.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/level_card.dart';

class HomeUserInfo extends StatelessWidget {
  const HomeUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.horizontalPadding20,
      child: Column(
        children: [
          const HomeAppBar(),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            context.pushNamed(RouterPath.profileView);
                          },
                          child: const AvatarWithFrame()),
                      const LevelCard(),
                    ],
                  ),
                  Gap(11.w),
                  const HomeUserData()
                ],
              ),
              Gap(16.w),
              const CartIcon(),
            ],
          ),
        ],
      ),
    ).animate().scale();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/settings_and_notifications.dart';
import 'package:zone_game_app/core/utils/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/coins_card.dart';
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
          const SettingsAndNotifications(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Column(
                    children: [
                      AvatarWithFrame(),
                      LevelCard(),
                    ],
                  ),
                  Gap(11.w),
                  const HomeUserData()
                ],
              ),
              const CoinsCard(),
            ],
          ),
        ],
      ),
    ).animate().scale();
  }
}
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/coins_card.dart';
import 'package:zone_game_app/core/shared/widgets/diamonds_card.dart';
import 'package:zone_game_app/core/shared/widgets/settings_and_notifications.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CoinsCard(),
              Gap(10),
              DiamondsCard(),
            ],
          ),
          SettingsAndNotifications(),
        ],
      ),
    );
  }
}

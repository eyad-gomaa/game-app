import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_banners.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_games_section.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_text_slider.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_user_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeUserInfo(),
          Gap(16),
          HomeBanners(),
          HomeTextSlider(),
          HomeGames(),
          Gap(20),
        ],
      ),
    );
  }
}

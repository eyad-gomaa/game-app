import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/features/profile/presentation/enums/top_ranked.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/animated_rank_avatar.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/player_rank_card.dart';

class RankList extends StatelessWidget {
  const RankList({
    super.key,
    required this.controller,
    required this.controller1,
    required this.controller2,
    required this.controller3,
  });

  final AnimationController controller;
  final AnimationController controller1;
  final AnimationController controller2;
  final AnimationController controller3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final scale = 1 - controller.value;
          final opacity = 1 - controller.value;
          return Opacity(
            opacity: opacity,
            child: Transform.scale(
              scale: scale,
              child: child,
            ),
          );
        },
        child: Expanded(
          child: Column(
            children: [
              Gap(15.h),
              Row(
                children: [
                  AnimatedRankAvatar(
                    controller: controller3,
                    rank: TopRanked.third,
                    offset: Offset(100, 100.h),
                  ),
                  AnimatedRankAvatar(
                    controller: controller1,
                    rank: TopRanked.first,
                    offset: Offset(0, 100.h),
                  ),
                  AnimatedRankAvatar(
                    controller: controller2,
                    rank: TopRanked.second,
                    offset: Offset(-100.w, 100.h),
                  ),
                ],
              ),
              Gap(22.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => PlayerRankCard(
                    index: index + 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

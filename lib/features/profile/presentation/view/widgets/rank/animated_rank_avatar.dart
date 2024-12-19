import 'package:flutter/material.dart';
import 'package:zone_game_app/features/profile/presentation/enums/top_ranked.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/rank_avatar.dart';

class AnimatedRankAvatar extends StatelessWidget {
  final AnimationController controller;
  final TopRanked rank;
  final Offset offset;

  AnimatedRankAvatar({
    super.key,
    required this.controller,
    required this.rank,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final slide = Offset.lerp(offset, Offset.zero, controller.value)!;
          final opacity = controller.value;
          return Opacity(
            opacity: opacity,
            child: Transform.translate(
              offset: slide,
              child: child,
            ),
          );
        },
        child: RankAvatar(
          rank: rank,
        ),
      ),
    );
  }
}

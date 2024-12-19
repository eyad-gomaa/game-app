import 'package:flutter/material.dart';
import 'package:zone_game_app/features/profile/presentation/enums/top_ranked.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/rank_avatar.dart';

class TopThreeCards extends StatelessWidget {
  const TopThreeCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      RankAvatar(
        rank: TopRanked.second,
      ),
      RankAvatar(
        rank: TopRanked.first,
      ),
      RankAvatar(
        rank: TopRanked.third,
      ),
    ]);
  }
}

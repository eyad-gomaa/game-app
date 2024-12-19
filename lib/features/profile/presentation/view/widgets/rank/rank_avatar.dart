import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/enums/top_ranked.dart';

class RankAvatar extends StatelessWidget {
  const RankAvatar({
    super.key,
    required this.rank,
  });
  final TopRanked rank;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          rank != TopRanked.first
              ? Gap(context.responsiveHeight(32) * 2.2)
              : const SizedBox.shrink(),
          rank == TopRanked.first
              ? Image.asset(
                  IconManager.rankTag,
                  height: context.responsiveHeight(32),
                )
              : const SizedBox.shrink(),
          ClipRRect(
            borderRadius: BorderRadius.circular(context.responsiveWidth(70)),
            child: Image.asset(
              ImageManager.avatar,
              height:
                  context.responsiveWidth(rank != TopRanked.first ? 70 : 90),
            ),
          ),
          SizedBox(
            height: context.responsiveHeight(40),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -(context.responsiveHeight(40) / 2),
                  child: Column(
                    children: [
                      Image.asset(
                        rankImage(),
                        height: context.responsiveHeight(40),
                      ),
                      Text(
                        "أحمد فوزي",
                        style: TextStyleManager.style14BoldWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String rankImage() {
    switch (rank) {
      case TopRanked.first:
        return IconManager.goldRankTag;
      case TopRanked.second:
        return IconManager.silverRankTag;
      case TopRanked.third:
        return IconManager.bronzeRankTag;
    }
  }
}

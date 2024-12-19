import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class GiftsHistoryItem extends StatelessWidget {
  const GiftsHistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.responsiveWidth(135),
            child: Row(
              children: [
                const AvatarWithFrame(
                  size: 41,
                ),
                const Gap(8),
                Column(children: [
                  Text(
                    "توربيني 22",
                    style: TextStyleManager.style12BoldBlack,
                  ),
                  Text(
                    "27/10/2024",
                    style: TextStyleManager.style10RegBlack,
                  ),
                ])
              ],
            ),
          ),
          Row(
            children: [
              Image.asset(
                ImageManager.gift,
                height: context.responsiveHeight(49),
                width: context.responsiveWidth(40),
              ),
              Text(
                "1",
                style: TextStyleManager.style14BoldBlack,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                IconManager.coin,
                height: context.responsiveHeight(18),
              ),
              const Gap(2),
              BorderedText(
                text: "5",
                style: TextStyleManager.style12BoldWhite,
              ),
              const Gap(19)
            ],
          ),
        ],
      ),
      const DashedSeperator()
    ]);
  }
}

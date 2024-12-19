import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class RecievedGiftItem extends StatelessWidget {
  const RecievedGiftItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(color: const Color(0xffEAE7D0), boxShadow: [
            BoxShadow(
              color: ColorManager.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 5.8,
              offset: const Offset(2, 2),
            )
          ]),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 70 / 74,
                child: Container(
                  margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  decoration: const BoxDecoration(
                    color: ColorManager.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      ImageManager.gift,
                      width: 36.04,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "168",
                      style: TextStyleManager.style12BoldBlack,
                    ),
                    const Gap(3),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -10,
          top: -10,
          child: Image.asset(
            ImageManager.giftDash,
            width: context.responsiveWidth(60),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

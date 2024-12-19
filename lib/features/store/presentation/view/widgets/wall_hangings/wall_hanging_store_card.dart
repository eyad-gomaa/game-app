import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class WallHangingStoreCard extends StatelessWidget {
  const WallHangingStoreCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                ImageManager.wallHangingCardBackground,
              ))),
              child: Stack(
                children: [
                  Image.asset(
                    ImageManager.wallHanging,
                    fit: BoxFit.fill,
                    width: context.width,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      margin:
                          EdgeInsets.only(bottom: context.responsiveHeight(14)),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        const Color(0xffA6A8BE).withOpacity(0),
                        const Color(0xff747194),
                        const Color(0xff6B648C).withOpacity(0)
                      ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            IconManager.coin,
                            height: context.responsiveHeight(18.44),
                          ),
                          const Gap(4),
                          BorderedText(
                            text: "1000",
                            style: TextStyleManager.style16BoldWhite,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
        Positioned(
          top: -context.responsiveHeight(9),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(ImageManager.emojieTitleCard,
                  width: context.responsiveWidth(137),
                  height: context.responsiveHeight(46),
                  fit: BoxFit.fill),
              BorderedText(
                text: "يقطين",
                style: TextStyleManager.style16BoldWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

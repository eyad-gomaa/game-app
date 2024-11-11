import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_title.dart';
import 'package:zone_game_app/core/shared/widgets/icons/close_icon.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';

class BottomSheetHeading extends StatelessWidget {
  const BottomSheetHeading({
    super.key,
    required this.title,
    this.description,
    this.leftIcon,
  });
  final String title;
  final String? description;
  final String? leftIcon;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double titleContainerHeight = screenHeight * 0.15;
    double iconHeight = titleContainerHeight * 0.4;
    return SizedBox(
      height: titleContainerHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(ImageManager.buyBackgroundLayer,
              fit: BoxFit.fill, width: MediaQuery.sizeOf(context).width),
          Positioned(
            left: 0,
            bottom: 0,
            child: SvgPicture.asset(
              ImageManager.leftBuyLayer,
              height: screenHeight * 0.1,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: InnerShadow(
              shadows: [
                Shadow(
                  color: ColorManager.black.withOpacity(0.2),
                  blurRadius: 5,
                  offset: const Offset(2, 2),
                ),
              ],
              child: SvgPicture.asset(
                ImageManager.rightBuyLayer,
                height: screenHeight * 0.13,
              ),
            ),
          ),
          Positioned(
            right: iconHeight * 0.5,
            bottom: 30,
            child: RepeatingScaleAnimation(
              child: Image.asset(
                ImageManager.diamondLayer,
                height: iconHeight,
              ),
            ),
          ),
          Positioned(
            left: iconHeight / 3,
            top: iconHeight / 4,
            child: RepeatingScaleAnimation(
              child: Image.asset(
                leftIcon ?? ImageManager.settingsLayer,
                height: iconHeight * 1.7,
              ),
            ),
          ),
          const Positioned(
            right: 20,
            top: 20,
            child: CloseIcon(),
          ),
          BottomSheetTitle(
            title: title,
            description: description,
          ),
        ],
      ),
    );
  }
}
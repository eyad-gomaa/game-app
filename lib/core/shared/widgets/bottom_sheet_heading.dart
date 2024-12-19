import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_title.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/close_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';

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
    return SizedBox(
      height: titleContainerHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(ImageManager.sheetHeading,
                fit: BoxFit.fill, width: MediaQuery.sizeOf(context).width),
          ),
          // SvgPicture.asset(ImageManager.buyBackgroundLayer,
          //     fit: BoxFit.fill, width: MediaQuery.sizeOf(context).width),
          // Positioned(
          //   left: 0,
          //   bottom: 0,
          //   child: SvgPicture.asset(
          //     ImageManager.leftBuyLayer,
          //     height: screenHeight * 0.1,
          //   ),
          // ),
          // Positioned(
          //   right: 0,
          //   top: 0,
          //   child: InnerShadow(
          //     shadows: [
          //       Shadow(
          //         color: ColorManager.black.withOpacity(0.2),
          //         blurRadius: 5,
          //         offset: const Offset(2, 2),
          //       ),
          //     ],
          //     child: SvgPicture.asset(
          //       ImageManager.rightBuyLayer,
          //       height: screenHeight * 0.13,
          //     ),
          //   ),
          // ),
          Positioned(
            right: 52,
            bottom: context.responsiveHeight(40),
            child: RepeatingScaleAnimation(
              child: Image.asset(ImageManager.diamondLayer,
                  height: context.responsiveHeight(55)),
            ),
          ),
          Positioned(
            left: context.responsiveWidth(10),
            top: context.responsiveHeight(10),
            child: RepeatingScaleAnimation(
              child: Image.asset(leftIcon ?? ImageManager.settingsLayer,
                  height: context.responsiveHeight(77)),
            ),
          ),
          const Positioned(
            right: 20,
            top: 20,
            child: CustomCloseButton(),
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

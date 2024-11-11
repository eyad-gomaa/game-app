import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: onTap,
      child: InnerShadow(
        shadows: [
          Shadow(
            color: ColorManager.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(-2, -2),
          ),
          Shadow(
            color: ColorManager.white.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.05,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorManager.blue,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                )
              ],
            ),
            child: Center(
              child: Text(
                "شراء",
                style: TextStyleManager.style16BoldWhite.copyWith(shadows: [
                  Shadow(
                    color: ColorManager.black.withOpacity(0.25),
                    blurRadius: 0,
                    offset: const Offset(0, 1),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
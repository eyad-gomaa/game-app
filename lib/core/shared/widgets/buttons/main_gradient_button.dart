import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class MainGradientButton extends StatelessWidget {
  const MainGradientButton({
    super.key,
    required this.onTap,
    this.width,
    required this.text,
    this.height,
    this.borderRadius,
    this.icon,
    this.textStyle,
  });
  final Function()? onTap;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Widget? icon;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
            color: ColorManager.white.withOpacity(0.32),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
          Shadow(
            color: ColorManager.black.withOpacity(0.24),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
        child: Container(
          height: height ?? 56.h,
          width: this.width ?? width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 14.r),
              gradient: ColorGradientManager.mainButtonGradient),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon ?? const SizedBox.shrink(),
                const Gap(4),
                Text(
                  text,
                  style: (textStyle ?? TextStyleManager.style16BoldWhite)
                      .copyWith(shadows: [
                    Shadow(
                      color: ColorManager.black.withOpacity(0.25),
                      blurRadius: 0,
                      offset: const Offset(0, 1),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

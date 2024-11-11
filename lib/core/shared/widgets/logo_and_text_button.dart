import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class LogoAndTextButton extends StatelessWidget {
  const LogoAndTextButton({
    super.key,
    required this.icon,
    required this.text,
    this.color,
    this.width,
    required this.onTap,
    this.suffix,
  });
  final String icon;
  final String text;
  final Color? color;
  final double? width;
  final void Function() onTap;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: (color ?? ColorManager.white).withOpacity(0.2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(icon),
                Gap(8.w),
                Text(text, style: TextStyleManager.style16RegWhite),
              ],
            ),
            suffix ?? const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

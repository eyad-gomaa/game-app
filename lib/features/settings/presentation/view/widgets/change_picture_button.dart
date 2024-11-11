import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class ChangePictureButton extends StatelessWidget {
  const ChangePictureButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: (ColorManager.white).withOpacity(0.2)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(IconManager.circlePicture),
            Gap(8.w),
            Text(
              "تغيير الصورة الشخصية",
              style: TextStyleManager.style14BoldWhite,
            ),
          ],
        ),
      ),
    );
  }
}

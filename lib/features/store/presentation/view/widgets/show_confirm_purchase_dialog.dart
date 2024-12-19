import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

Future<dynamic> showConfirmPurchaseDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (
      context,
    ) =>
        Dialog(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          width: context.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff9C1163).withOpacity(0.3),
                    const Color(0xff704387).withOpacity(0.3),
                    const Color(0xff41A8C4).withOpacity(0.3),
                  ])),
          child: Padding(
            padding: EdgeInsets.all(context.responsiveHeight(22)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImageManager.successStar,
                  height: context.responsiveHeight(79),
                ),
                Gap(context.responsiveHeight(7)),
                Text(
                  "تم الشراء بنجاح! ",
                  style: TextStyleManager.style16RegBlack,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

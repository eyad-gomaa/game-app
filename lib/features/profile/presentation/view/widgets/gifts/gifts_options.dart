import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class GiftsOptions extends StatelessWidget {
  const GiftsOptions({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.text,
  });
  final int currentIndex;
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.responsiveWidth(110),
      height: context.responsiveHeight(40),
      decoration: BoxDecoration(
        color: ColorManager.lightPink,
        border: Border.all(
            color: currentIndex == index
                ? ColorManager.lightPink
                : const Color(0xff913D81)),
        gradient: currentIndex == index
            ? null
            : const LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                    Color(0xff913D81),
                    Color(0xff6B508F),
                  ]),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r), topLeft: Radius.circular(8.r)),
      ),
      child: Center(
        child: Text(
          text,
          style: currentIndex == index
              ? TextStyleManager.style14RegBlack
              : TextStyleManager.style14RegWhite,
        ),
      ),
    );
  }
}

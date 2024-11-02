
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_manager.dart';
class HomeCartIcon extends StatelessWidget {
  const HomeCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 40.w,
        height: 40.w,
        decoration: BoxDecoration(
          color: ColorManager.darkGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset(
          IconManager.cart,
          width: 20.w,
          height: 20.w,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
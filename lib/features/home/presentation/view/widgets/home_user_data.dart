import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_renk_container.dart';

class HomeUserData extends StatelessWidget {
  const HomeUserData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "مستخدم جديد",
          style: TextStyleManager.style12BoldWhite,
        ),
        const Gap(4),
        Text(
          "ID : 8960984",
          style: TextStyleManager.style10RegWhite,
        ),
        Gap(7.h),
        const HomeRankContainer()
      ],
    );
  }
}

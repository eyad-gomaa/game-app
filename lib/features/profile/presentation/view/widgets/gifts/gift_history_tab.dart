import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gifts_history_item.dart';

class GiftsHistoryTab extends StatelessWidget {
  const GiftsHistoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 9.h),
          decoration: BoxDecoration(
            color: ColorManager.black.withOpacity(0.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.responsiveWidth(135),
                child: const BorderedText(
                  text: "اللاعب",
                  stockWidth: 1,
                ),
              ),
              const BorderedText(
                text: "الهدية",
                stockWidth: 1,
              ),
              const BorderedText(
                text: "القيمة",
                stockWidth: 1,
              ),
            ],
          ),
        ),
        Gap(24.h),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => const GiftsHistoryItem()
                .animate()
                .scaleY(
                    delay: Duration(milliseconds: index < 10 ? index * 100 : 0))
                .fade(
                    duration:
                        Duration(milliseconds: index < 10 ? index * 100 : 0)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/icons/blue_button.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/gold_cois_store_widgets/confirm_gold_purchase_bottom_sheet.dart';

class GoldCoinsStoreGridView extends StatelessWidget {
  const GoldCoinsStoreGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double axisSpacing = width * 0.03;
    double childAspectRatio = 0.728 / 1;
    double imageSize = width * 0.17;
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: axisSpacing,
            mainAxisSpacing: axisSpacing,
            crossAxisCount: 2),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(18.w),
            decoration: BoxDecoration(
              color: ColorManager.white.withOpacity(0.24),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  width: imageSize,
                  height: imageSize,
                  IconManager.coin,
                ),
                Text(
                  "5,000",
                  style: TextStyleManager.style20BoldWhite,
                ),
                Text(
                  "5,000 قطعة من الذهب",
                  style: TextStyleManager.style11LightWhite,
                ),
                Text(
                  "45.00 ر.س",
                  style: TextStyleManager.style18BoldWhite,
                ),
                const Gap(8),
                BlueButton(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ConfirmGoldPurchaseBottomSheet();
                      },
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

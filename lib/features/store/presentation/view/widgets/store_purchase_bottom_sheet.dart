import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/show_confirm_purchase_dialog.dart';

class StorePurchaseBottomSheet extends StatelessWidget {
  const StorePurchaseBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(32.r), topLeft: Radius.circular(32.r)),
      child: Container(
        color: ColorManager.lightPink,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetHeading(title: "اسم الملصق"),
            Gap(
              context.responsiveHeight(16),
            ),
            Text(
              "هل أنت متأكد من شراء هذا العنصر؟",
              style: TextStyleManager.style16RegBlack,
            ),
            Gap(context.responsiveHeight(42)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "-1000",
                  style: TextStyleManager.style20BoldBlack,
                ),
                const Gap(5),
                Image.asset(
                  IconManager.coin,
                  height: context.responsiveHeight(32),
                ),
              ],
            ),
            Gap(
              context.responsiveHeight(16),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.responsiveWidth(40)),
              child: MainGradientButton(
                onTap: () {
                  context.pop();
                  showConfirmPurchaseDialog(context);
                },
                text: "تأكيد",
              ),
            ),
            Gap(context.responsiveHeight(20)),
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  "الغاء",
                  style: TextStyle(
                    color: ColorManager.blue,
                    fontSize: TextStyleManager.adaptiveFontSize(16),
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Gap(context.responsiveHeight(20)),
          ],
        ),
      ),
    );
  }
}

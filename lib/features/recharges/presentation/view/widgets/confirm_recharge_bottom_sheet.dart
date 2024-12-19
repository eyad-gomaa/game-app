import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/recharges/presentation/enums/coins_recharge_options.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ConfirmRechargeButtomSheet extends StatelessWidget {
  const ConfirmRechargeButtomSheet({
    super.key,
    required this.type,
  });
  final CoinsRechargeTypes type;
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: ColorManager.lightPink,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ============== Title and description Stack ==============
            const BottomSheetHeading(
                title: "تأكيد الشراء",
                description: "هل أنت متأكد من شراء الباقة؟",
                leftIcon: ImageManager.treasureLayer),
            Gap(8.h),
            // ============== card Image ==============
            Text(
              "5,000",
              style: TextStyleManager.style32BoldBlack
                  .copyWith(color: ColorManager.purple),
            ),
            Image.asset(
              type == CoinsRechargeTypes.gold
                  ? IconManager.coin
                  : IconManager.diamond,
              height: MediaQuery.sizeOf(context).width * 0.3,
            ).animate().scale(duration: const Duration(milliseconds: 300)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 24.w),
              child: MainGradientButton(
                onTap: () {},
                text: "45.00 ر.س",
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_title.dart';
import 'package:zone_game_app/core/shared/widgets/icons/close_icon.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/delete_account_form.dart';
import 'package:zone_game_app/generated/l10n.dart';

class DeleteAccountBottomSheet extends StatefulWidget {
  const DeleteAccountBottomSheet({
    super.key,
  });

  @override
  State<DeleteAccountBottomSheet> createState() =>
      _DeleteAccountBottomSheetState();
}

class _DeleteAccountBottomSheetState extends State<DeleteAccountBottomSheet> {
  String value = "ar";
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    double screenHeight = MediaQuery.sizeOf(context).height;
    double titleContainerHeight = screenHeight * 0.15;
    double iconHeight = titleContainerHeight * 0.4;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ============== Title and description Stack ==============
            SizedBox(
              height: titleContainerHeight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(ImageManager.buyBackgroundLayer,
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: SvgPicture.asset(
                      ImageManager.leftBuyLayer,
                      height: screenHeight * 0.1,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: InnerShadow(
                      shadows: [
                        Shadow(
                          color: ColorManager.black.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(2, 2),
                        ),
                      ],
                      child: SvgPicture.asset(
                        ImageManager.rightBuyLayer,
                        height: screenHeight * 0.13,
                      ),
                    ),
                  ),
                  Positioned(
                    right: iconHeight * 0.5,
                    bottom: 30,
                    child: RepeatingScaleAnimation(
                      child: Image.asset(
                        ImageManager.diamondLayer,
                        height: iconHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    left: iconHeight / 3,
                    top: iconHeight / 4,
                    child: RepeatingScaleAnimation(
                      child: Image.asset(
                        ImageManager.settingsLayer,
                        height: iconHeight * 1.7,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 20,
                    top: 20,
                    child: CloseIcon(),
                  ),
                  BottomSheetTitle(
                    title: names.deleteAccount,
                    description: names.DeleteAccountDescription,
                  ),
                ],
              ),
            ),
            Gap(8.h),
            // ============== card Image ==============
            Center(
              child: Image.asset(
                ImageManager.deleteAccountWarning,
                height: MediaQuery.sizeOf(context).width * 0.3,
              ).animate().scale(duration: const Duration(milliseconds: 300)),
            ),
            Gap(24.h),
            // ============== Delete Account Form ==============
            const DeleteAccountForm(),
          ],
        ),
      ),
    );
  }
}

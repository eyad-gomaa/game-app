import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_title.dart';
import 'package:zone_game_app/core/shared/widgets/icons/close_icon.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_cubit.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/settings_switch_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class InviteFriendBottomSheet extends StatelessWidget {
  const InviteFriendBottomSheet({
    super.key,
  });

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
            BottomSheetHeading(
              title: names.inviteFriends,
              description: names.inviteFriendsDescription,
            ),
            Gap(8.h),
            // ============== card Image ==============
            Image.asset(
              ImageManager.inviteFriend,
              height: MediaQuery.sizeOf(context).width * 0.3,
            ).animate().scale(duration: const Duration(milliseconds: 300)),
            Gap(8.h),
            // ============== Notifications Settings ==============
            Padding(
              padding: PaddingManager.horizontalPadding20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(16.h),
                  Text(
                    names.yourInviteCode,
                    style: TextStyleManager.style16RegLightBlack,
                  ),
                  Gap(7.h),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.w),
                    decoration: BoxDecoration(
                      color: ColorManager.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "AGJNCmos80600",
                            style: TextStyleManager.style18RegBlack,
                          ),
                          ScaleOnTap(
                            onTap: () {},
                            child: const Icon(
                              Icons.copy_outlined,
                              color: ColorManager.blue,
                            ),
                          ),
                        ]),
                  ),
                  Gap(24.h),
                  MainGradientButton(onTap: () {}, text: names.shareLink),
                  Gap(34.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

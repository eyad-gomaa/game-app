import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/settings_switch_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class NotificationsSettingsBottomSheet extends StatefulWidget {
  const NotificationsSettingsBottomSheet({
    super.key,
  });

  @override
  State<NotificationsSettingsBottomSheet> createState() =>
      _NotificationsSettingsBottomSheetState();
}

class _NotificationsSettingsBottomSheetState
    extends State<NotificationsSettingsBottomSheet> {
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
              title: names.notificationControl,
              description: names.notificationControlDescription,
            ),
            Gap(8.h),
            // ============== card Image ==============
            Image.asset(
              ImageManager.notificationSettings,
              height: MediaQuery.sizeOf(context).width * 0.3,
            ).animate().scale(duration: const Duration(milliseconds: 300)),
            Gap(8.h),
            // ============== Notifications Settings ==============
            Padding(
              padding: PaddingManager.horizontalPadding20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingSwitchCard(
                    title: names.gameNotifications,
                  ),
                  SettingSwitchCard(
                    title: names.friendNotifications,
                  ),
                  SettingSwitchCard(
                    title: names.walletNotifications,
                  ),
                  SettingSwitchCard(
                    title: names.chatNotifications,
                  ),
                  SettingSwitchCard(
                    title: names.messageNotifications,
                  ),
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

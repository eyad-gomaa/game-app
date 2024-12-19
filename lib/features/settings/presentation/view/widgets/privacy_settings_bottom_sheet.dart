import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/privacy_settinds_tile_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class PrivacySettingsBottomSheet extends StatelessWidget {
  const PrivacySettingsBottomSheet({
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
        height: MediaQuery.sizeOf(context).height * 0.85,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: ColorManager.lightPink,
        ),
        child: SingleChildScrollView(
          // Wrap content in SingleChildScrollView
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title and description stack
              BottomSheetHeading(
                title: names.privacySettings,
              ),
              Gap(8.h),

              Padding(
                padding: PaddingManager.horizontalPadding20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PrivacySettingTileCard(
                      title: names.doNotDisturbTitle,
                      description: names.doNotDisturbDescription,
                    ),
                    PrivacySettingTileCard(
                      title: names.noWatchingTitle,
                      description: names.noWatchingDescription,
                    ),
                    PrivacySettingTileCard(
                      title: names.noTrackingTitle,
                      description: names.noTrackingDescription,
                    ),
                    PrivacySettingTileCard(
                      title: names.hideNationalityTitle,
                      description: names.hideNationalityDescription,
                    ),
                    PrivacySettingTileCard(
                      title: names.hideBirthdayTitle,
                      description: names.hideBirthdayDescription,
                    ),
                    PrivacySettingTileCard(
                      title: names.stopFriendRequestsTitle,
                      description: names.stopFriendRequestsDescription,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

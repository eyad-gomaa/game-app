import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/icons/settings_icon.dart';
class SettingsAndNotifications extends StatelessWidget {
  const SettingsAndNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      const NotificationsIcon(),
      Gap(20.w),
      const SettingsIcon(),
    ]);
  }
}
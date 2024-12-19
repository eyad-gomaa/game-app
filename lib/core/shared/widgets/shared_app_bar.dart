import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/settings_and_notifications.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class SharedAppBar extends StatelessWidget {
  const SharedAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
              child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: BackIcon())),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyleManager.style16BoldWhite,
              ),
            ),
          ),
          const Expanded(child: SettingsAndNotifications()),
        ],
      ),
    );
  }
}

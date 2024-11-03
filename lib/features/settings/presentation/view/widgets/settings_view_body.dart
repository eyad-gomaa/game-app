import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/settings_and_notifications.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SettingsAndNotifications(),
      ],
    );
  }
}

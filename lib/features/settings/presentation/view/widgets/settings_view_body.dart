import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/settings_buttons.dart';
import 'package:zone_game_app/generated/l10n.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.horizontalPadding20,
      child: Column(
        children: [
          SharedAppBar(
            title: S.of(context).settings,
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: SettingsButtons(),
            ),
          ),
        ],
      ),
    );
  }
}

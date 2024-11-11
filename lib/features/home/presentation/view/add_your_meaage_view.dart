import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/add_your_message_view_body.dart';

class AddYourMessageView extends StatelessWidget {
  const AddYourMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
          child: SafeArea(
        child: Padding(
            padding: PaddingManager.horizontalPadding20,
            child: const AddYourMessageViewBody()),
      )),
    );
  }
}

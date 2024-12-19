import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        image: ImageManager.profielBackground,
        child: ProfileViewBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/missions_view_body.dart';

class MissionsView extends StatelessWidget {
  const MissionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          MissionsViewBackground(),
          SafeArea(
            bottom: false,
            child: MissionsViewBody(),
          ),
        ],
      ),
    );
  }
}

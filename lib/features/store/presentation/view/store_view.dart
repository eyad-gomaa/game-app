import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/store_view_body.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: Padding(
          padding: PaddingManager.horizontalPadding20,
          child: const SafeArea(
            bottom: false,
            child: StoreViewBody(),
          ),
        ),
      ),
    );
  }
}

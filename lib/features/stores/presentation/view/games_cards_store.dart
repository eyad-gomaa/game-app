import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/games_cards_store_widgets/games_cards_store_view_body.dart';

class GamesCardsStoreView extends StatelessWidget {
  const GamesCardsStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: GamesCardsStoreViewBody(),
        ),
      ),
    );
  }
}

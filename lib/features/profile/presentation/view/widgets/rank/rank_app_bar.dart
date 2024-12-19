import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/close_button.dart';
import 'package:zone_game_app/core/shared/widgets/coins_card.dart';

class RankAppBar extends StatelessWidget {
  const RankAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCloseButton(),
        CoinsCard(),
      ],
    );
  }
}

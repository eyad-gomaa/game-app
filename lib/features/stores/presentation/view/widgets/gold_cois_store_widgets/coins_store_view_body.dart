import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/gold_cois_store_widgets/gold_coins_store_grid_view.dart';
import 'package:zone_game_app/generated/l10n.dart';

class CoinsStoreViewBody extends StatelessWidget {
  const CoinsStoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SharedAppBar(title: S.of(context).buyGold,),
        Expanded(
          child: Column(children: [
            Center(
                child: Text(
              "قم بشحن عملاتك الذهبية",
              style: TextStyleManager.style18RegWhite,
            )),
            const Gap(32),
            const GoldCoinsStoreGridView()
          ]),
        ),
      ],
    );
  }
}



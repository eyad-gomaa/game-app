import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/features/recharges/presentation/enums/coins_recharge_options.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/coins_recharge_card.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/diamond_recharge_card.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/recharge_shelf.dart';

class RechargeListView extends StatelessWidget {
  const RechargeListView({
    super.key,
    required this.type,
  });
  final CoinsRechargeTypes type;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              EdgeInsets.symmetric(vertical: context.responsiveHeight(28.48)),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              const RechargeShelf(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => cardType(type),
                  )),
            ],
          ),
        );
      },
    );
  }

  Widget cardType(CoinsRechargeTypes type) {
    switch (type) {
      case CoinsRechargeTypes.gold:
        return CoinsRechargeCard(
          type: type,
        );
      case CoinsRechargeTypes.diamonds:
        return DiamondRechargeCard(
          type: type,
        );
      case CoinsRechargeTypes.vip:
        return DiamondRechargeCard(
          type: type,
        );
    }
  }
}

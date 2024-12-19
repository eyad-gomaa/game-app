import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/recharge_view_body.dart';

class RechargeView extends StatelessWidget {
  const RechargeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RechargeViewBody(),
          ),
        ),
      ),
    );
  }
}

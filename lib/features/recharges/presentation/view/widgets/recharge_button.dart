import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/recharges/presentation/enums/coins_recharge_options.dart';

class CoinsShopButton extends StatelessWidget {
  const CoinsShopButton({
    super.key,
    required this.currentOption,
    required this.option,
    required this.title,
    this.onTap,
  });
  final CoinsRechargeTypes currentOption;
  final CoinsRechargeTypes option;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: currentOption == option
                ? null
                : ColorManager.black.withOpacity(0.1),
            gradient: currentOption == option
                ? const LinearGradient(
                    begin: AlignmentDirectional.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                        Color(0xff00C0FF),
                        Color(0xff5558FF),
                      ])
                : null,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyleManager.style14RegWhite,
            ),
          ),
        ),
      ),
    );
  }
}

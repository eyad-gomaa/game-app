import 'package:flutter/material.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/close_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/shared/widgets/coins_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class GiftsAppBar extends StatelessWidget {
  const GiftsAppBar({
    super.key,
    required this.names,
  });

  final S names;

  @override
  Widget build(BuildContext context) {
    double appBarItemWidth = (context.width / 3);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 27),
      child: Row(
        children: [
          Expanded(
              // width: appBarItemWidth,
              child: Align(
            alignment: LocalizationManager.isArabic()
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: const CustomCloseButton(),
          )),
          Expanded(
            // width: appBarItemWidth,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                names.gifts,
                style: TextStyleManager.style16BoldWhite,
              ),
            ),
          ),
          Expanded(
            // width: appBarItemWidth,
            child: Align(
                alignment: LocalizationManager.isArabic()
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: const CoinsCard()),
          )
        ],
      ),
    );
  }
}

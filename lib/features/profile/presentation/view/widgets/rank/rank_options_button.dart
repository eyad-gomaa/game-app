import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/enums/rank_options.dart';

class RankOptionButton extends StatelessWidget {
  const RankOptionButton({
    super.key,
    required this.currentOption,
    required this.option,
    required this.title,
    required this.onTap,
  });
  final RankOptions currentOption;
  final RankOptions option;
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
                ? LinearGradient(
                    colors: currentOption == RankOptions.friends
                        ? [
                            const Color(0xff00C0FF),
                            const Color(0xff5558FF),
                          ]
                        : [
                            const Color(0xff5558FF),
                            const Color(0xff00C0FF),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/game_info_card.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({
    super.key,
    this.size,
  });
  final double? size;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => const GameInfoCard(),
        );
      },
      child: SvgPicture.asset(
        IconManager.info,
        height: size,
        width: size,
      ),
    );
  }
}

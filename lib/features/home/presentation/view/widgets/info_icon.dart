import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: () {
      },
      child: SvgPicture.asset(
        IconManager.info,
                fit: BoxFit.scaleDown,

      ),
    );
  }
}

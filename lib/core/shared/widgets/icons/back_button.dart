import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/flip_widget.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: () {
        context.pop();
      },
      child: FlipWidget(
        child: SvgPicture.asset(
          IconManager.back,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

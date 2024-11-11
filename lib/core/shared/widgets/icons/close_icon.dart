import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: () {
        context.pop();
      },
      child: SvgPicture.asset(
        IconManager.close,
      ),
    );
  }
}

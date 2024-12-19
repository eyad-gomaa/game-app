import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';

class DoubleArrow extends StatelessWidget {
  const DoubleArrow({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
        onTap: onTap,
        child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(
                !LocalizationManager.isArabic() ? 3.14159 : 0),
            child: SvgPicture.asset(IconManager.doubleArrow)));
  }
}

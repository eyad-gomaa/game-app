import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
        onTap: () {
          context.pushNamed(RouterPath.settings);
        },
        child: SvgPicture.asset(
          IconManager.settings,
          height: 35.w,
        ));
  }
}

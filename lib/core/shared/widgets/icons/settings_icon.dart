
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(child: SvgPicture.asset(IconManager.bill));
  }
}
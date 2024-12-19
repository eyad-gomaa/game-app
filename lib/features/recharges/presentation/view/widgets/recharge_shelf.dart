import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';

class RechargeShelf extends StatelessWidget {
  const RechargeShelf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -(context.responsiveHeight(28.48) / 1.2),
      child: Image.asset(
        ImageManager.shelf,
        height: context.responsiveHeight(28.48),
        width: context.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

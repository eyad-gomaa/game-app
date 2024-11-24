import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';

class FlipWidget extends StatelessWidget {
  const FlipWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: LocalizationManager.flipWidget(),
      child: child,
    );
  }
}
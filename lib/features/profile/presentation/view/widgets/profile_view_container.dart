import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';

class ProfileViewContainer extends StatelessWidget {
  const ProfileViewContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding:
          EdgeInsets.symmetric(vertical: context.height / 70, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 6.4,
            offset: const Offset(0, 0),
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      child: child,
    );
  }
}

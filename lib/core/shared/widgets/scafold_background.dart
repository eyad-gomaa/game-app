import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //================= Main Scafold Background =================
        Image.asset(
          ImageManager.mainBackground,
          fit: BoxFit.cover,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
        ),
        //================= Screen Over Background =================
        child
      ],
    );
  }
}

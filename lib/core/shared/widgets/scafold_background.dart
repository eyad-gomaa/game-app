import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({
    super.key,
    required this.child, this.image,
  });
  final Widget child;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //================= Main Scafold Background =================
        Image.asset(
          image??ImageManager.mainBackground,
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

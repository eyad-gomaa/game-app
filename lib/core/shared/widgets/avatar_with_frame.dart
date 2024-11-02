
import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';
class AvatarWithFrame extends StatelessWidget {
  const AvatarWithFrame({
    super.key,
    this.size = 56,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: size - size / 5,
            width: size - size / 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                ImageManager.avatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
              child: Image.asset(
            ImageManager.avatarFrame,
            fit: BoxFit.contain,
          )),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';

class AvatarWithFrame extends StatelessWidget {
  const AvatarWithFrame({
    super.key,
    this.size = 56,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size + size / 8,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: size - size / 7,
            width: size - size / 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                ImageManager.avatar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
              height: size + size / 8,
              width: size,
              child: Image.asset(
                ImageManager.avatarFrame,
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}

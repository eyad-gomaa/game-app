import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/user_data.dart';

class AvatarWithFrame extends StatelessWidget {
  const AvatarWithFrame({
    super.key,
    this.size = 56,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<UserData>(Keys.userDataBox).listenable(),
      builder: (context, box, child) {
        final UserData userData = box.get(Keys.userData)!;
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
                    child: Image.network(
                      userData.profileImg!,
                      fit: BoxFit.fill,
                    )),
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
      },
    );
  }
}

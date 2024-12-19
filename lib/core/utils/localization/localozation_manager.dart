import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/dependancy_injection/get_it.dart';

class LocalizationManager {
  static bool isArabic() {
    return getIt<SharedPreferences>().getString(Keys.locale) == 'ar';
  }

  static Matrix4 flipWidget() {
    return Matrix4.rotationY(!LocalizationManager.isArabic() ? 3.14159 : 0);
  }
}

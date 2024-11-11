import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/dependancy_injection/get_it.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());
  String? locale;
  String? appLanguage;
  final sharedPreferences = getIt<SharedPreferences>();
  void changeLanguage(String value) {
    if (value == "ar") {
      sharedPreferences.setString(Keys.locale, "ar");
    } else {
      sharedPreferences.setString(Keys.locale, "en");
    }
    emit(ChangeLanguage());
  }

  Locale getLocale() {
    final String? locale = sharedPreferences.getString(Keys.locale);
    if (locale == "en") {
      this.locale = "en";
      appLanguage = "(EN) English";
      return const Locale('en');
    } else {
      this.locale = "ar";
      appLanguage = "(AR) العربية";
      return const Locale('ar');
    }
  }
}

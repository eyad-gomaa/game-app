import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  final SharedPreferences sharedPreferences;
  SharedPrefsHelper({required this.sharedPreferences});

// =================== Getters =================
  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  int? getInt(String key) {
    return sharedPreferences.getInt(key);
  }

  double? getDouble(String key) {
    return sharedPreferences.getDouble(key);
  }

// =================== Setters =================
  Future<void> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  Future<void> setInt(String key, int value) async {
    await sharedPreferences.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    await sharedPreferences.setDouble(key, value);
  }

  Future<void> remove(String key) async {
    await sharedPreferences.remove(key);
  }
}

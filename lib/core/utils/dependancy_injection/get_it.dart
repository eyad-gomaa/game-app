import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zone_game_app/core/utils/local_storage_manager/shared_prefrences_helper.dart';
import 'package:zone_game_app/core/utils/networking/api_service.dart';
import 'package:zone_game_app/features/home/data/repo/home_repo.dart';
import 'package:zone_game_app/features/splash/data/repos/splash_repo.dart';

final getIt = GetIt.instance;

setupGetIt() async {
  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<SharedPrefsHelper>(
      SharedPrefsHelper(sharedPreferences: getIt<SharedPreferences>()));
  getIt.registerSingleton<DioHelper>(DioHelper());
  getIt.registerSingleton<SplashRepo>(SplashRepo(dioHelper: getIt<DioHelper>()));
  getIt.registerSingleton<HomeRepo>(HomeRepo(dioHelper: getIt<DioHelper>()));
}

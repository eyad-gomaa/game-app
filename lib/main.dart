import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/bloc_observer.dart';
import 'package:zone_game_app/core/utils/dependancy_injection/get_it.dart';
import 'package:zone_game_app/core/utils/navigation/app_router.dart';
import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/country.dart';
import 'package:zone_game_app/features/splash/data/models/gamer_guest_model/user_data.dart';
import 'package:zone_game_app/features/splash/data/repos/splash_repo.dart';
import 'package:zone_game_app/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:zone_game_app/zone_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await Hive.initFlutter();
  Hive.registerAdapter(UserDataAdapter());
  Hive.registerAdapter(GamerGuestCountryAdapter());
  await Hive.openBox<UserData>(Keys.userDataBox);
  Bloc.observer = AppBlocObserver();
  
  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashCubit(getIt<SplashRepo>()),
          ),
        ],
        child: ZoneApp(
          appRouter: AppRouter(),
        ),
      ),
    ), // Wrap your app
  );
}

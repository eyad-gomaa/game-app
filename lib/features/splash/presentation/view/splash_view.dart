import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zone_game_app/core/constants/keys.dart';
import 'package:zone_game_app/core/utils/dependancy_injection/get_it.dart';
import 'package:zone_game_app/core/utils/local_storage_manager/shared_prefrences_helper.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:zone_game_app/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bool? firstOpen = getIt<SharedPrefsHelper>().getBool(Keys.firstOpen);
      if (firstOpen == null) {
        context.read<SplashCubit>().guestRegister();
      } else {
        context.pushNamed(RouterPath.home);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

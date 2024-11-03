import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/home/presentation/view/home_view.dart';
import 'package:zone_game_app/features/settings/presentation/view/settings_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case RouterPath.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case RouterPath.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsView(),
        );
    }
    return null;
  }
}
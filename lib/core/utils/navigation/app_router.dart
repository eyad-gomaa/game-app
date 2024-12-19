import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/home/presentation/view/home_view.dart';
import 'package:zone_game_app/features/home/presentation/view/add_your_meaage_view.dart';
import 'package:zone_game_app/features/profile/presentation/view/gifts_view.dart';
import 'package:zone_game_app/features/profile/presentation/view/missions_view.dart';
import 'package:zone_game_app/features/profile/presentation/view/profile_view.dart';
import 'package:zone_game_app/features/profile/presentation/view/rank_view.dart';
import 'package:zone_game_app/features/recharges/presentation/view/recharge_view.dart';
import 'package:zone_game_app/features/settings/presentation/view/change_password_view.dart';
import 'package:zone_game_app/features/settings/presentation/view/edit_my_data_view.dart';
import 'package:zone_game_app/features/settings/presentation/view/settings_view.dart';
import 'package:zone_game_app/features/splash/presentation/view/splash_view.dart';
import 'package:zone_game_app/features/store/presentation/view/emojies_store_view.dart';
import 'package:zone_game_app/features/store/presentation/view/store_view.dart';
import 'package:zone_game_app/features/store/presentation/view/wall_hangings_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RouterPath.splashView:
        return _bottomToTopTransition(const SplashView());
      case RouterPath.home:
        return _bottomToTopTransition(const HomeView());
      case RouterPath.settings:
        return _bottomToTopTransition(const SettingsView());
      case RouterPath.editMyDataView:
        return _bottomToTopTransition(const EditMyDataView());
      case RouterPath.addYourMessageView:
        return _bottomToTopTransition(const AddYourMessageView());
      case RouterPath.storeView:
        return _bottomToTopTransition(const StoreView());
      // case RouterPath.gamesCardsStoreView:
      //   return _bottomToTopTransition(const GamesCardsStoreView());
      case RouterPath.changePasswordView:
        return _bottomToTopTransition(const ChangePasswordView());
      case RouterPath.profileView:
        return _bottomToTopTransition(const ProfileView());
      case RouterPath.giftsView:
        return _bottomToTopTransition(const GiftsView());
      case RouterPath.missionsView:
        return _bottomToTopTransition(const MissionsView());
      case RouterPath.rankView:
        return _bottomToTopTransition(const RankView());
      case RouterPath.rechargeView:
        return _bottomToTopTransition(const RechargeView());
      case RouterPath.emojiesStoreView:
        return _bottomToTopTransition(const EmojiesStoreView());
      case RouterPath.wallHangingsView:
        return _bottomToTopTransition(const WallHangingsView());
    }
    return null;
  }

  Route _bottomToTopTransition(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      reverseTransitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.2);
        const end = Offset.zero;
        const curve = Curves.easeOutBack;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

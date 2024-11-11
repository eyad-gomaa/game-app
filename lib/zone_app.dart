import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/navigation/app_router.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/core/utils/managers/theme_manager/first_theme.dart';
import 'package:zone_game_app/features/home/presentation/view/home_view.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_cubit.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_state.dart';
import '../generated/l10n.dart';

class ZoneApp extends StatelessWidget {
  const ZoneApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: (_, child) {
          return BlocBuilder<LocalizationCubit, LocalizationState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: firstTheme,
                locale: context.read<LocalizationCubit>().getLocale(),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                initialRoute: RouterPath.home,
                onGenerateRoute: appRouter.generateRoute,
              );
            },
          );
        },
        child: const HomeView(),
      ),
    );
  }
}

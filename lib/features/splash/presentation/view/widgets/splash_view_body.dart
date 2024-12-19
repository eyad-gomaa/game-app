import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zone_game_app/core/shared/widgets/show_error_dialog.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/models/enums/cubit_states.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/splash/presentation/manager/cubit/splash_cubit.dart';
import 'package:zone_game_app/features/splash/presentation/manager/cubit/splash_state.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state.getAllHomeState == CubitStates.success &&
            state.guestRegisterState == CubitStates.success) {
          context.pushNamed(RouterPath.home);
        } else if (state.getAllHomeState == CubitStates.failure ||
            state.guestRegisterState == CubitStates.failure) {
          // error dialog
          showErrorDialog(
            context: context,
            showCloseButton: false,
            showTextButton: false,
            mainButtonTitle: "إعادة المحاولة",
            onMainButtonTap: () {
              context.pop();
              context.read<SplashCubit>().guestRegister();
              context.read<SplashCubit>().getAllHomeData();
            },
          );
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: context.height,
              width: context.width,
              child: Image.asset(
                ImageManager.splash,
                fit: BoxFit.cover,
              ),
            ),
            state.getAllHomeState == CubitStates.loading ||
                    state.guestRegisterState == CubitStates.loading
                ? const Padding(
                    padding: EdgeInsets.all(30),
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox.shrink()
          ],
        );
      },
    );
  }
}

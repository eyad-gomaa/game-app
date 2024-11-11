import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/gold_cois_store_widgets/coins_store_view_body.dart';

class CoinsStoreView extends StatelessWidget {
  const CoinsStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 13.w,
              top: 13.w,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
                child: Image.asset(
                  ImageManager.cornerCoinsLayer,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: PaddingManager.horizontalPadding20,
                child: const CoinsStoreViewBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/missions_view_body.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/recharge_view_body.dart';

class StoreViewBody extends StatelessWidget {
  const StoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: const MissionsAppBar(),
        ),
        const SingleBanner(),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 16,
              mainAxisSpacing: 21,
            ),
            itemBuilder: (context, index) => ScaleOnTap(
              onTap: () {
                context.pushNamed(RouterPath.wallHangingsView);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: ColorManager.white.withOpacity(0.2),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            ImageManager.storeCategoryLayer,
                            fit: BoxFit.cover,
                            height: context.height,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: context.width,
                                height: context.responsiveHeight(40),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    const Color(0xffFFC64F).withOpacity(0),
                                    const Color(0xffBAA471),
                                    const Color(0xffFFC64F).withOpacity(0),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImageManager.storeFramesImage,
                                  height: context.responsiveHeight(100),
                                  width: context.responsiveWidth(118.75),
                                  fit: BoxFit.contain,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.responsiveHeight(40),
                            child: const Center(
                              child: BorderedText(
                                text: "الإطارات",
                                borderColor: Color(0xff664420),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            itemCount: 6,
          ),
        )
      ],
    );
  }
}

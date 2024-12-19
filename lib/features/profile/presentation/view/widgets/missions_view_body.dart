import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/close_button.dart';
import 'package:zone_game_app/core/shared/widgets/coins_card.dart';
import 'package:zone_game_app/core/shared/widgets/diamonds_card.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class MissionsViewBody extends StatelessWidget {
  const MissionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingManager.horizontalPadding20,
      child: Column(
        children: [
          const MissionsAppBar(),
          Gap(16.h),
          BorderedText(
            text: "المهام",
            style: TextStyleManager.style18BoldWhite,
          ),
          Gap(16.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffE2E8F5).withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 21.6,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: Column(
                children: [
                  Gap(32.h),
                  SizedBox(
                      width: context.responsiveWidth(247),
                      child: Text(
                        "قم بإنجاز المهام اليومية لتنتقل إلى مستوى أعلى",
                        style: TextStyleManager.style16RegBlack,
                        textAlign: TextAlign.center,
                      )),
                  Gap(20.h),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(16.w),
                        margin: const EdgeInsets.only(
                            left: 19, right: 19, bottom: 16),
                        decoration: BoxDecoration(
                            color: ColorManager.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.16),
                                  offset: const Offset(0, 4),
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.outer)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageManager.funRace,
                                  width: context.responsiveWidth(56),
                                  height: context.responsiveHeight(56),
                                ),
                                const Gap(16),
                                SizedBox(
                                  width: context.responsiveWidth(182),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "قم بلعب لعبة الأرقام 5 أيام متتالية",
                                        style: TextStyleManager.style14RegBlack,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height:
                                                  context.responsiveHeight(8),
                                              decoration: BoxDecoration(
                                                  color: ColorManager.white
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2000),
                                                  border: Border.all(
                                                      color:
                                                          ColorManager.grey)),
                                              child: LayoutBuilder(
                                                builder:
                                                    (context, constraints) =>
                                                        Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: InnerShadow(
                                                    shadows: [
                                                      Shadow(
                                                          color: ColorManager
                                                              .black
                                                              .withOpacity(
                                                                  0.25),
                                                          offset: const Offset(
                                                              -1, -1),
                                                          blurRadius: 4),
                                                      Shadow(
                                                          color: ColorManager
                                                              .white
                                                              .withOpacity(0.7),
                                                          offset: const Offset(
                                                              1, 1),
                                                          blurRadius: 1)
                                                    ],
                                                    child: Container(
                                                      width:
                                                          constraints.maxWidth /
                                                              2,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff23C662),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Gap(10.w),
                                          Text(
                                            "( ${3} / ${5} )",
                                            style: TextStyleManager
                                                .style14BoldBlack,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  IconManager.coin,
                                  height: context.responsiveHeight(29),
                                ),
                                Text(
                                  "100+",
                                  style: TextStyleManager.style14BoldBlack,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MissionsAppBar extends StatelessWidget {
  const MissionsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomCloseButton(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DiamondsCard(),
              Gap(16.w),
              const CoinsCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class MissionsViewBackground extends StatelessWidget {
  const MissionsViewBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xffBA90B4),
            Color(0xff9666A0),
          ])),
    );
  }
}

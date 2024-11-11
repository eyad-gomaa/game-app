import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/gradient_text_border.dart';
class StoreGameCard extends StatelessWidget {
  const StoreGameCard({
    super.key,
    required this.name,
    required this.color,
    required this.image,
    required this.onTap,
  });
  final String name;
  final Color color;
  final String image;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.sizeOf(context).width / 4;
    return Column(
      children: [
        ScaleOnTap(
          onTap: onTap,
          child: SizedBox(
            width: cardWidth,
            child: Stack(
              children: [
                InnerShadow(
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(-4, -4),
                      blurRadius: 8.4,
                    ),
                    Shadow(
                      color: Colors.white.withOpacity(0.25),
                      offset: const Offset(6, -5),
                      blurRadius: 9.2,
                    ),
                  ],
                  child: AspectRatio(
                    aspectRatio: 1.5 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: color,
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: cardWidth / 3,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.03),
                              ),
                            ),
                            Container(
                              width: cardWidth / 3,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.03),
                              ),
                            ),
                            Container(
                              width: cardWidth / 3,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.03),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    image,
                                    height: cardWidth / 2,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    ImageManager.cardVectorsRightLayer,
                                    width: cardWidth / 3,
                                    height: cardWidth / 3,
                                    colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.3),
                                        BlendMode.srcIn),
                                  ),
                                  SvgPicture.asset(
                                    ImageManager.cardVectorsLeftLayer,
                                    width: cardWidth / 2,
                                    height: cardWidth / 2,
                                    colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.3),
                                        BlendMode.srcIn),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(8.h),
        GradientTextBorder(
          gradientColors: const [
            Color(0xffF78426),
            Color(0xff0542F4),
          ],
          text: name,
          style: TextStyleManager.style14BoldWhite.copyWith(shadows: [
            const Shadow(
                offset: Offset(-1, 1),
                blurRadius: 0.3,
                color: Color(0xff621876))
          ]),
        )
      ],
    );
  }
}
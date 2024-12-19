import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/gradient_text_border.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/info_icon.dart';

class HomeGameCard extends StatelessWidget {
  const HomeGameCard({
    super.key,
    required this.text,
    required this.color,
    required this.image,
    required this.anmimationDelay,
    required this.onTap,
  });
  final String text;
  final Color color;
  final String image;
  final int anmimationDelay;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: onTap,
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
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: color,
              ),
              child: Stack(alignment: Alignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.03),
                      ),
                    ),
                    Container(
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.03),
                      ),
                    ),
                    Container(
                      width: 30.w,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            ImageManager.cardVectorsRightLayer,
                            width: MediaQuery.sizeOf(context).width / 10,
                            height: MediaQuery.sizeOf(context).width / 10,
                            colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.3), BlendMode.srcIn),
                          ),
                          SvgPicture.asset(
                            ImageManager.cardVectorsLeftLayer,
                            width: MediaQuery.sizeOf(context).width / 5,
                            height: MediaQuery.sizeOf(context).width / 5,
                            colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.3), BlendMode.srcIn),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            image,
                            width: MediaQuery.sizeOf(context).width / 5,
                            height: MediaQuery.sizeOf(context).width / 6,
                          ),
                          GradientTextBorder(
                            gradientColors: const [
                              Color(0xff0542F4),
                              Color(0xffF78426),
                            ],
                            text: text,
                            style: TextStyleManager.style16BoldWhite,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          const Positioned(top: 16, right: 16, child: InfoIcon())
        ],
      ).animate().scale(delay: Duration(milliseconds: 200 + anmimationDelay)),
    );
  }
}

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_gradient_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/size_manager/padding_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: PaddingManager.horizontalPadding20,
              child: Column(
                children: [
                  const SettingsAndNotifications(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Column(
                            children: [
                              AvatarWithFrame(),
                              LevelCard(),
                            ],
                          ),
                          Gap(11.w),
                          const HomeUserData()
                        ],
                      ),
                      // 13 is the (plus icon) positioned
                      Gap(13.w),
                      const CoinsCard()
                    ],
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                ImageManager.trapGame,
                ImageManager.diffrenceGame
              ].map((b) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: SvgPicture.asset(
                      b,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeFactor: 1,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                enlargeCenterPage: true,
                viewportFraction: 1,
                height: 153,
                onPageChanged: (index, reason) {},
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  border: GradientBoxBorder(
                      gradient: ColorGradientManager.darkPurpleDarkGreyGradient,
                      width: 1),
                  gradient: ColorGradientManager.paidMessageGradient),
            ),
            Padding(
              padding: PaddingManager.horizontalPadding20,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: 1.37 / 1,
                children: const [
                  HomeGameCard(
                    color: Color(0xffFDF7E0),
                    text: 'سباق المرح',
                    image: ImageManager.funRace,
                  ),
                  HomeGameCard(
                    color: Color(0xffBBB671),
                    text: 'لعبة الذاكرة',
                    image: ImageManager.memoryGame,
                  ),
                  HomeGameCard(
                    color: Color(0xffB4D2E2),
                    text: 'كنز الإختلافات',
                    image: ImageManager.diffrenceGame,
                  ),
                  HomeGameCard(
                    color: Color(0xffFCC85D),
                    text: 'لعبة الفخ',
                    image: ImageManager.trapGame,
                  ),
                  HomeGameCard(
                    color: Color(0xffFCC85D),
                    text: "نداء الحرب",
                    image: ImageManager.warGame,
                  ),
                  HomeGameCard(
                    color: Color(0xffE6DD72),
                    text: "سلسلة الأسئلة",
                    image: ImageManager.questionsGame,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeGameCard extends StatelessWidget {
  const HomeGameCard({
    super.key,
    required this.text,
    required this.color,
    required this.image,
  });
  final String text;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InnerShadow(
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
                      color: Colors.white,
                      fontSize: 20,
                      gradientColors: const [
                        Color(0xff0542F4),
                        Color(0xffF78426),
                      ],
                      text: text,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class GradientTextBorderPainter extends CustomPainter {
  final String text;
  final TextStyle textStyle;
  final List<Color> gradientColors;

  GradientTextBorderPainter(
      {required this.text,
      required this.textStyle,
      required this.gradientColors});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    // Create a gradient for the stroke
    final shader = LinearGradient(
      colors: gradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    paint.shader = shader;

    // Draw the border text with gradient
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle.copyWith(foreground: paint)),
      textDirection: TextDirection.ltr,
    )..layout();

    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );

    textPainter.paint(canvas, offset);

    // Draw the fill text on top
    final fillPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();

    fillPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class GradientTextBorder extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color color;
  const GradientTextBorder(
      {super.key,
      required this.text,
      required this.gradientColors,
      required this.fontSize,
      this.fontWeight,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: const Size(50, 10),
        painter: GradientTextBorderPainter(
          text: text,
          gradientColors: gradientColors,
          textStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.bold,
              color: color, // Inner fill color
              shadows: const [Shadow(offset: Offset(-1, 1), blurRadius: 0.8)]),
        ),
      ),
    );
  }
}

class InnerShadow extends SingleChildRenderObjectWidget {
  const InnerShadow({
    super.key,
    this.shadows = const <Shadow>[],
    super.child,
  });

  final List<Shadow> shadows;

  @override
  RenderObject createRenderObject(BuildContext context) {
    final renderObject = _RenderInnerShadow();
    updateRenderObject(context, renderObject);
    return renderObject;
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderInnerShadow renderObject) {
    renderObject.shadows = shadows;
  }
}

class _RenderInnerShadow extends RenderProxyBox {
  late List<Shadow> shadows;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    final bounds = offset & size;

    context.canvas.saveLayer(bounds, Paint());
    context.paintChild(child!, offset);

    for (final shadow in shadows) {
      final shadowRect = bounds.inflate(shadow.blurSigma);
      final shadowPaint = Paint()
        ..blendMode = BlendMode.srcATop
        ..colorFilter = ColorFilter.mode(shadow.color, BlendMode.srcOut)
        ..imageFilter = ImageFilter.blur(
            sigmaX: shadow.blurSigma, sigmaY: shadow.blurSigma);
      context.canvas
        ..saveLayer(shadowRect, shadowPaint)
        ..translate(shadow.offset.dx, shadow.offset.dy);
      context.paintChild(child!, offset);
      context.canvas.restore();
    }

    context.canvas.restore();
  }
}

class HomeUserData extends StatelessWidget {
  const HomeUserData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("مستخدم جديد"),
        Text("ID : 8960984"),
        HomeRankContainer()
      ],
    );
  }
}

class HomeRankContainer extends StatelessWidget {
  const HomeRankContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 73.w,
      // height: 22.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ColorManager.darkPink,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("1,000"),
          const Gap(4),
          SvgPicture.asset(IconManager.rankStar)
        ],
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  const LevelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.w,
      width: 50.w,
      decoration: BoxDecoration(
        gradient: ColorGradientManager.silverGradient,
        border: GradientBoxBorder(
          gradient: ColorGradientManager.darkPurpleDarkGreyGradient,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Center(child: Text("LV. 4")),
    );
  }
}

class AvatarWithFrame extends StatelessWidget {
  const AvatarWithFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 9,
          child: SizedBox(
            height: 56,
            width: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                ImageManager.avatar,
              ),
            ),
          ),
        ),
        SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(
              ImageManager.avatarFrame,
              fit: BoxFit.contain,
            )),
      ],
    );
  }
}

class CoinsCard extends StatelessWidget {
  const CoinsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 13.w,
              child: Container(
                padding: EdgeInsets.only(left: 13.w + 9.w), // width: 104.w,
                height: 36.h,
                decoration: BoxDecoration(
                  gradient: ColorGradientManager.orangeGradient,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Container(
                        width: 25.h,
                        height: 25.h,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(.36),
                            ),
                            borderRadius: BorderRadius.circular(100)),
                        child: SvgPicture.asset(IconManager.coin),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "4.520",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                IconManager.plus,
                width: 26.w,
                height: 26.w,
              ),
            )
          ],
        ),
        Gap(16.w),
        const HomeCartIcon()
      ],
    );
  }
}

class SettingsAndNotifications extends StatelessWidget {
  const SettingsAndNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      const NotificationsIcon(),
      Gap(20.w),
      const SettingsIcon(),
    ]);
  }
}

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(child: SvgPicture.asset(IconManager.bill));
  }
}

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {}, child: SvgPicture.asset(IconManager.settings));
  }
}

class HomeCartIcon extends StatelessWidget {
  const HomeCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 40.w,
        height: 40.w,
        decoration: BoxDecoration(
          color: ColorManager.darkGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset(
          IconManager.cart,
          width: 20.w,
          height: 20.w,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

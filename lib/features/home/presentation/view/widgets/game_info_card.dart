import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/style_manager/text_style_manager.dart';

class GameInfoCard extends StatefulWidget {
  const GameInfoCard({super.key});

  @override
  State<GameInfoCard> createState() => _GameInfoCardState();
}

class _GameInfoCardState extends State<GameInfoCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    // Animate the y-axis translation from 100% (off-screen) to 0% (centered)
    _animation = Tween<double>(begin: 1.1, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));
    // Start the animation with a delay
    Future.delayed(const Duration(milliseconds: 100), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Use AnimatedBuilder to translate the container smoothly
          AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Align(
                    alignment: Alignment.center,
                    child: FractionalTranslation(
                      translation: Offset(0.0, _animation.value),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xffFEEBB0),
                          borderRadius: BorderRadius.circular(32.r),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // will be change to custom paint
                            InfoTitle(controller: _controller),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.w, horizontal: 30.w),
                              child: const InfoData(),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        ],
      ),
    );
  }
}

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    super.key,
    required this.controller,
  });
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r), topRight: Radius.circular(32.r)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            ImageManager.infoBackground,
            width: MediaQuery.sizeOf(context).width * 0.9,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            child: Image.asset(
              ImageManager.questionMark,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 30.h,
            child: Image.asset(
              ImageManager.infoNote,
              height: 80.h,
              width: 80.h,
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "إرشادات اللعبة",
                  style: TextStyleManager.style24BoldBrown,
                ),
                Text(
                  "تعرف على إرشادات اللعبة قبل البدء",
                  style: TextStyleManager.style16RegBrown,
                ),
              ]),
          Positioned(
            right: 20.h,
            top: 20.h,
            child: ScaleOnTap(
              onTap: () {
                Future.delayed(const Duration(milliseconds: 100), () async {
                  await controller.reverse();
                  Navigator.pop(context);
                });
              },
              child: SvgPicture.asset(
                IconManager.close,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoData extends StatefulWidget {
  const InfoData({
    super.key,
  });

  @override
  State<InfoData> createState() => _InfoDataState();
}

class _InfoDataState extends State<InfoData> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageManager.infoImage,
          fit: BoxFit.cover,
        ),
        Gap(30.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Text(
                "هنا يكتب أول عنوان إرشادات ",
                textAlign: TextAlign.center,
                style: TextStyleManager.style18BoldBrown,
              ),
              Gap(16.h),
              Text(
                "هنا يكتب نبذة تفصيلية لأول نقطة إرشادية للعبة ويجب قرائتها من اللاعب جيدا قبل البدأ باللعب لمعرفة قوانين اللعبة",
                textAlign: TextAlign.center,
                style: TextStyleManager.style16RegLightBlack,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
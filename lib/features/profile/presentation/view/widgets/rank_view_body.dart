import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_from_top_animation.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/info_icon.dart';
import 'package:zone_game_app/features/profile/presentation/enums/rank_options.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/my_rank_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/rank_app_bar.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/rank_list.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/rank/rank_options_button.dart';

class RankViewBody extends StatefulWidget {
  const RankViewBody({super.key});

  @override
  State<RankViewBody> createState() => _RankViewBodyState();
}

class _RankViewBodyState extends State<RankViewBody>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _myRankController;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _controller.addListener(() {
      if (_controller.isCompleted) {
        _controller.reverse();
      }
    });
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _myRankController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _startAnimations();
  }

  void _startAnimations() async {
    _controller.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    _controller3.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    _controller2.forward();
    await Future.delayed(const Duration(milliseconds: 300));
    _controller1.forward();
  }

  void _resetAnimations() async {
    _controller3.reset();
    _controller2.reset();
    _controller1.reset();
    await _myRankController.reverse();
    _myRankController.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  RankOptions currentRankOption = RankOptions.global;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: PaddingManager.horizontalPadding20,
          child: Column(
            children: [
              const RankAppBar(),
              Gap(20.h),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                        ],
                      ), // container decoration
                      child: Column(
                        children: [
                          //================== title and description ==================
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              children: [
                                Text(
                                  "قائمة الترتيب",
                                  style: TextStyleManager.style16BoldWhite,
                                ),
                                Text(
                                  "تعرف على ترتيبك بين اللاعبين",
                                  style: TextStyleManager.style16RegWhite,
                                )
                              ],
                            ),
                          ),
                          // ================= rank options buttons ===================
                          Container(
                            height: context.responsiveHeight(48),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorManager.white.withOpacity(0.24),
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Row(
                                children: [
                                  // الترتيب علي الاصدقاء  friends button
                                  RankOptionButton(
                                      option: RankOptions.friends,
                                      currentOption: currentRankOption,
                                      title: "الترتيب على الأصدقاء",
                                      onTap: () {
                                        setState(() {
                                          currentRankOption =
                                              RankOptions.friends;
                                        });
                                        _startAnimations();
                                        _resetAnimations();
                                      }),
                                  // ================= seperator =================
                                  Container(
                                    color: ColorManager.darkGrey,
                                    width: 1,
                                  ),
                                  // الترتيب العالمي global button
                                  RankOptionButton(
                                      option: RankOptions.global,
                                      currentOption: currentRankOption,
                                      title: "الترتيب العالمي",
                                      onTap: () {
                                        setState(() {
                                          currentRankOption =
                                              RankOptions.global;
                                        });
                                        _startAnimations();
                                        _resetAnimations();
                                      }),
                                ],
                              ),
                            ),
                          ),
                          Gap(22.h),
                          RankList(
                            controller: _controller,
                            controller1: _controller1,
                            controller2: _controller2,
                            controller3: _controller3,
                          ),
                          Gap(70.h),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 17,
                      top: 17,
                      child: InfoIcon(
                        size: context.responsiveHeight(32),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SlidingfromTopTransition(
          startOffset: const Offset(0, 1),
          duration: const Duration(milliseconds: 800),
          controller: _myRankController,
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: MyRankCard(),
          ),
        )
      ],
    );
  }
}

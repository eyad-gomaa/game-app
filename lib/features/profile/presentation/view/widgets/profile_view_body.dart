import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_achivemetnts.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_bio_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_game_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_level_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_wallet_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/user_profile_data.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  @override
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    Widget sectionSeperator = SliverGap(16.h);
    return CustomScrollView(slivers: [
      // ================= App Bar =================
      SliverAppBar(
        backgroundColor: Colors.black.withOpacity(0.2),
        leading: const BackIcon(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: NotificationsIcon(),
          )
        ],
        pinned: false,
        title: Text(names.myAccount, style: TextStyleManager.style16BoldBlack),
        centerTitle: true,
        elevation: 0,
      ),
      // ================= Profile Data =================
      const SliverToBoxAdapter(
        child: UserProfileData(),
      ),
      // ================= Profile Cards =================
      SliverToBoxAdapter(
        child: SlideInAnimation(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: LocalizationManager.isArabic()
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: [
                ScaleOnTap(child: SvgPicture.asset(IconManager.magic)),
                const Gap(10),
                ScaleOnTap(child: SvgPicture.asset(IconManager.coloredUser)),
              ],
            ),
          ),
        ),
      ),
      SliverGap(MediaQuery.sizeOf(context).height / 15),
      // ================= Level Cards =================
      const SliverToBoxAdapter(
        child: ProfielLevelCard(),
      ),
      sectionSeperator,
      // ================= Bio Card =================
      const SliverToBoxAdapter(
        child: ProfileBioCard(),
      ),
      sectionSeperator,
      // ================= Wallet Card =================
      const SliverToBoxAdapter(
        child: ProfileWalletCard(),
      ),
      // ================= Game Card =================
      sectionSeperator,
      const SliverToBoxAdapter(
        child: ProfileGameCard(),
      ),
      sectionSeperator,
      // ================= Achivements =================
      const SliverToBoxAdapter(
        child: ProfileAchivements(),
      ),
      sectionSeperator,
    ]);
  }
}

// class SlidingfromTopTransition extends StatefulWidget {
//   final Duration duration;
//   final Offset startOffset;
//   final int? delay;
//   final Widget child;
//   const SlidingfromTopTransition({
//     super.key,
//     this.duration = const Duration(milliseconds: 500),
//     this.startOffset = const Offset(0, -100),
//     this.delay,
//     required this.child,
//   });

//   @override
//   State<SlidingfromTopTransition> createState() =>
//       _SlidingfromTopTransitionState();
// }

// class _SlidingfromTopTransitionState extends State<SlidingfromTopTransition>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<Offset> _offsetAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: widget.duration,
//       vsync: this,
//     );
//     _offsetAnimation = Tween<Offset>(
//       begin: widget.startOffset,
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.easeOut,
//     ));
//     Future.delayed(Duration(milliseconds: widget.delay ?? 0), () {
//       _animationController.forward();
//     });

//     _animationController.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         _animationController.dispose();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(position: _offsetAnimation, child: widget.child);
//   }
// }

// class RepeatingScaleAnimation extends StatefulWidget {
//   final Widget child;
//   final Duration duration;
//   final double scaleStart;
//   final double scaleEnd;

//   const RepeatingScaleAnimation({
//     super.key,
//     required this.child,
//     this.duration = const Duration(seconds: 1),
//     this.scaleStart = 1.0,
//     this.scaleEnd = 1.5,
//   });

//   @override
//   State<RepeatingScaleAnimation> createState() =>
//       _RepeatingScaleAnimationState();
// }

// class _RepeatingScaleAnimationState extends State<RepeatingScaleAnimation>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: widget.duration)
//       ..repeat(reverse: true);
//     _animation = Tween<double>(begin: widget.scaleStart, end: widget.scaleEnd)
//         .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return Transform.scale(scale: _animation.value, child: child);
//       },
//       child: widget.child,
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

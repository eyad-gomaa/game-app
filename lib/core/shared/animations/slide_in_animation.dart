import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_achivemetnts.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_bio_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_game_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_level_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_wallet_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/user_profile_data.dart';
import 'package:zone_game_app/generated/l10n.dart';
class SlideInAnimation extends StatefulWidget {
  const SlideInAnimation(
      {super.key, required this.child, this.delay = 0, this.duration});
  final Widget child;
  final int? delay;
  final int? duration;
  @override
  State<SlideInAnimation> createState() => _SlideInAnimationState();
}

class _SlideInAnimationState extends State<SlideInAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration ?? 700),
    );

    // Define the animation from outside the screen (Offset(x: 1.5, y: 0)) to center (Offset(x: 0, y: 0))
    _animation = Tween<Offset>(
      begin: Offset(LocalizationManager.isArabic() ? 1.5 : -1.5,
          0), // if localization is arabic from right else from left
      end: Offset.zero, // Center
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    Future.delayed(Duration(milliseconds: widget.delay! * 100), () {
      _controller.forward(); // Start the animation after the delay
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.dispose();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation, child: widget.child);
  }
}
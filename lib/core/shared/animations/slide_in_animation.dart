import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';

class SlideInAnimation extends StatefulWidget {
  const SlideInAnimation(
      {super.key,
      required this.child,
      this.delay = 0,
      this.duration,
      this.offset});
  final Widget child;
  final int? delay;
  final int? duration;
  final double? offset;
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
      begin: Offset(
          LocalizationManager.isArabic()
              ? widget.offset ?? 1.5
              : widget.offset != null
                  ? -widget.offset!
                  : -1.5,
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

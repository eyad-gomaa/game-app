import 'package:flutter/material.dart';

class RepeatingScaleAnimation extends StatefulWidget {
  const RepeatingScaleAnimation({super.key, required this.child});
  final Widget child;
  @override
  State<RepeatingScaleAnimation> createState() =>
      _RepeatingScaleAnimationState();
}


class _RepeatingScaleAnimationState extends State<RepeatingScaleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1), // Adjust duration as needed
      vsync: this,
    )..repeat(reverse: true); // Repeats the animation with reverse

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
            scale: _scaleAnimation.value, child: widget.child);
      },
    );
  }
}
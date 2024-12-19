import 'package:flutter/material.dart';

class RepeatingScaleAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double scaleStart;
  final double scaleEnd;

  const RepeatingScaleAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 1),
    this.scaleStart = 1.0,
    this.scaleEnd = 1.5,
  });

  @override
  State<RepeatingScaleAnimation> createState() =>
      _RepeatingScaleAnimationState();
}

class _RepeatingScaleAnimationState extends State<RepeatingScaleAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);
    _animation = Tween<double>(begin: widget.scaleStart, end: widget.scaleEnd)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(scale: _animation.value, child: child);
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

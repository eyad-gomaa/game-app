import 'package:flutter/material.dart';

class SlidingfromTopTransition extends StatefulWidget {
  final Duration duration;
  final Offset startOffset;
  final int? delay;
  final Widget child;
  final AnimationController? controller;
  const SlidingfromTopTransition({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.startOffset = const Offset(0, -100),
    this.delay,
    required this.child,
    this.controller,
  });

  @override
  State<SlidingfromTopTransition> createState() =>
      _SlidingfromTopTransitionState();
}

class _SlidingfromTopTransitionState extends State<SlidingfromTopTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: widget.startOffset,
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: widget.controller ?? _animationController,
      curve: Curves.easeOut,
    ));
    Future.delayed(Duration(milliseconds: widget.delay ?? 0), () {
      widget.controller != null
          ? widget.controller!.forward()
          : _animationController.forward();
    });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.controller != null
            ? widget.controller!.dispose()
            : _animationController.dispose();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _offsetAnimation, child: widget.child);
  }
}

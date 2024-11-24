import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    super.key,
    required this.text,
    this.borderColor,
    this.style,
  });
  final String text;
  final Color? borderColor;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Implement the stroke
        Text(
          text,
          style: TextStyle(
            fontSize: style?.fontSize ?? 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = borderColor ?? Colors.black,
          ),
        ),
        // The text inside
        Text(
          text,
          style: style?.copyWith(
                letterSpacing: 2,
              ) ??
              const TextStyle(
                fontSize: 14,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
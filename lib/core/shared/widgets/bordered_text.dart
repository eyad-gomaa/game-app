import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    super.key,
    required this.text,
    this.borderColor,
    this.style,
    this.stockWidth = 2,
  });
  final String text;
  final Color? borderColor;
  final TextStyle? style;
  final double stockWidth;
  @override
  Widget build(BuildContext context) {
    double letterSpacing = 0;
    return Stack(
      children: [
        // Implement the stroke
        Text(
          text,
          style: TextStyle(
            fontSize: style?.fontSize ?? 14,
            fontWeight: FontWeight.bold,
            letterSpacing: letterSpacing,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = stockWidth
              ..color = borderColor ?? Colors.black,
          ),
        ),
        // The text inside
        Text(
          text,
          style: style?.copyWith(
                letterSpacing: letterSpacing,
              ) ??
              TextStyle(
                fontSize: 14,
                letterSpacing: letterSpacing,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}

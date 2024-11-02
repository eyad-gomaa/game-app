
import 'package:flutter/material.dart';
class GradientTextBorder extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;
  final TextStyle style;
  const GradientTextBorder(
      {super.key,
      required this.text,
      required this.gradientColors,
      required this.style});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: const Size(50, 10),
        painter: GradientTextBorderPainter(
            text: text,
            gradientColors: gradientColors,
            textStyle: style.copyWith(shadows: const [
              Shadow(offset: Offset(-1, 1), blurRadius: 0.8)
            ])),
      ),
    );
  }
}


class GradientTextBorderPainter extends CustomPainter {
  final String text;
  final TextStyle textStyle;
  final List<Color> gradientColors;

  GradientTextBorderPainter(
      {required this.text,
      required this.textStyle,
      required this.gradientColors});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    // Create a gradient for the stroke
    final shader = LinearGradient(
      colors: gradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    paint.shader = shader;

    // Draw the border text with gradient
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle.copyWith(foreground: paint)),
      textDirection: TextDirection.ltr,
    )..layout();

    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );

    textPainter.paint(canvas, offset);

    // Draw the fill text on top
    final fillPainter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();

    fillPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


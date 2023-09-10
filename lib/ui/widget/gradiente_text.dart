import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final TextStyle style;

  const GradientText({
    required this.text,
    required this.gradient,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(
        text,
        style: style.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

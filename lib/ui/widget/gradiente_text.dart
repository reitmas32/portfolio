import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final TextStyle style;
  final TextAlign? textAlign;

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    required this.style,
    this.textAlign,
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
        textAlign: textAlign,
      ),
    );
  }
}

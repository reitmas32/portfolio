import 'package:flutter/material.dart';

class TargedText extends StatelessWidget {
  const TargedText({
    super.key,
    required this.lable,
    required this.color,
  });

  final String lable;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        lable,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size.width > 700 ? 20 : 15,
        ),
      ),
    );
  }
}
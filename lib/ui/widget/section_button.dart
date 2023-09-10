import 'package:flutter/material.dart';

class SectionButton extends StatefulWidget {
  const SectionButton({
    super.key,
    required this.lable,
  });

  final String lable;

  @override
  State<SectionButton> createState() => _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: ((event) {
        setState(() {
          isHover = true;
        });
      }),
      onExit: ((event) {
        setState(() {
          isHover = false;
        });
      }),
      child: GestureDetector(
        onTap: (() => print('Hola')),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: isHover ? Colors.purple : Colors.blue,
              fontSize: isHover ? 22 : 17,
              fontWeight: isHover ? FontWeight.bold : FontWeight.normal,
            ),
            child: Row(
              children: [
                Text(
                  '- ${widget.lable}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

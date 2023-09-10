import 'package:flutter/material.dart';

class ButtonProjects extends StatefulWidget {
  const ButtonProjects({super.key, required this.lable, required this.onTap});
  final String lable;
  final VoidCallback? onTap;

  @override
  State<ButtonProjects> createState() => _ButtonProjectsState();
}

class _ButtonProjectsState extends State<ButtonProjects> {
  double fontSizeButton = 25.0;
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(
              width: 3.0,
              color: _isHover
                  ? Colors.blue
                  : Theme.of(context).colorScheme.onPrimary),
          padding: const EdgeInsets.all(15.0),
        ),
        onPressed: widget.onTap,
        onHover: (isHover) {
          setState(
            () {
              _isHover = isHover;
            },
          );
        },
        child: Text(
          widget.lable,
          style: TextStyle(
            color: _isHover
                ? Colors.blue
                : Theme.of(context).colorScheme.onPrimary,
            fontSize: fontSizeButton,
          ),
        ),
      ),
    );
  }
}

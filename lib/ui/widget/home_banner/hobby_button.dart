import 'package:flutter/material.dart';

class HobbyButton extends StatelessWidget {
  const HobbyButton({
    super.key,
    required this.lable,
    required this.backgroundColor,
  });

  final String lable;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return backgroundColor; //<-- SEE HERE
              }
              return null; // Defer to the widget's default.
            },
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lable,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

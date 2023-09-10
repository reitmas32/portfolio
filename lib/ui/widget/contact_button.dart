import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.iconData,
    this.url = '',
  });

  final IconData iconData;
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (() {}),
      splashRadius: 30,
      hoverColor: Colors.blue,
      splashColor: const Color.fromARGB(255, 204, 4, 239),
      icon: Icon(
        iconData,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LogoButtonMenu extends StatelessWidget {
  const LogoButtonMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () {
        // ignore: avoid_print
        print('Menu');
      },
      hoverColor: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network(
            'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/logo.png',
            height: 40.0,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/gradiente_text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.3,
          child: Image.network(
            'https://raw.githubusercontent.com/reitmas32/portfolio/featstatic_files/assets/profile.png',
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        GradientText(
          text: 'Hi👋, I\'m Rafa Zamora',
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 9, 121, 232),
            Color.fromARGB(255, 187, 0, 255)
          ]),
          style: const TextStyle(
            fontSize: 75.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Full Stack developer',
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4 - 30,
        ),
        Transform.rotate(
          angle: 3.14159265359,
          child: const Text(
            '☝️',
            style: TextStyle(fontSize: 25, color: Colors.purple),
          ),
        ),
      ],
    );
  }
}

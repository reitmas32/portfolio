import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/gradiente_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        const GradientText(
          text: 'Hi👋, I\'m Rafael Zamora',
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 9, 121, 232),
            Color.fromARGB(255, 187, 0, 255)
          ]),
          style: TextStyle(
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
          child: MouseRegion(
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
            child: InkWell(
              onTap: () {
                widget.scrollController.animateTo(
                  size.height + 200,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.linear,
                );
              },
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(
                  milliseconds: 100,
                ),
                style: TextStyle(
                  fontSize: isHover ? 70 : 50,
                  color: Colors.purple,
                ),
                child: const Text(
                  '☝️',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

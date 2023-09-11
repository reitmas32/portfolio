import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/contact_button.dart';
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
        GradientText(
          text: 'Hi👋, I\'m Rafael Zamora',
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 9, 121, 232),
            Color.fromARGB(255, 187, 0, 255)
          ]),
          style: TextStyle(
            fontSize: size.width > 700 ? 75.0 : 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const Text(
          'Full Stack developer',
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4 - 30,
        ),
        if (size.width < 700)
          const SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactButton(
                  iconData: EvaIcons.linkedinOutline,
                  url: 'https://www.linkedin.com/in/rafazamora/',
                ),
                ContactButton(
                  iconData: EvaIcons.twitterOutline,
                  url: 'https://twitter.com/rafazram',
                ),
                ContactButton(
                  iconData: EvaIcons.githubOutline,
                  url: 'https://github.com/reitmas32',
                ),
              ],
            ),
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
                  size.width > 700 ? size.height + 200 : size.height - 50,
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

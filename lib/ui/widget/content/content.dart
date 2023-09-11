import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/contact_button.dart';
import 'package:portfolio/ui/widget/content/about_me.dart';
import 'package:portfolio/ui/widget/content/experience.dart';
import 'package:portfolio/ui/widget/content/projects.dart';
import 'package:portfolio/ui/widget/content/skills.dart';
import 'package:portfolio/ui/widget/gradiente_text.dart';
import 'package:portfolio/ui/widget/section_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Content extends StatelessWidget {
  Content({
    super.key,
    required this.isFullScroll,
    required this.scrollController,
  });

  final bool isFullScroll;
  final ItemScrollController contentScrollController = ItemScrollController();

  final ScrollController scrollController;

  static const elements = [
    AboutMeSection(),
    ExperienceSection(),
    SkillsSection(),
    ProjectsSection(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GradientText(
                  text: 'Rafael Zamora',
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 9, 121, 232),
                    Color.fromARGB(255, 187, 0, 255)
                  ]),
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Full Stack developer',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Desarrollador de software apasionado con 2 años de experiencia, creo en el aprendizaje constante y la colaboración en equipo.',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SectionButton(
                  lable: 'About',
                  onTap: () => scrollToItem(0, size),
                ),
                SectionButton(
                  lable: 'Experince',
                  onTap: () => scrollToItem(1, size),
                ),
                SectionButton(
                  lable: 'Skills',
                  onTap: () => scrollToItem(2, size),
                ),
                SectionButton(
                  lable: 'Projects',
                  onTap: () => scrollToItem(3, size),
                ),
                const Spacer(),
                const Row(
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
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 80,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: MediaQuery.of(context).size.height - 50,
            width: MediaQuery.of(context).size.width / 2,
            child: ScrollablePositionedList.builder(
              itemScrollController: contentScrollController,
              physics: !isFullScroll
                  ? const NeverScrollableScrollPhysics()
                  : null, // Evita el desplazamiento del ListView interior
              shrinkWrap: true,
              itemCount: elements.length,
              itemBuilder: (BuildContext context, int index) {
                return elements[index];
              }, // Hace que el ListView interior se ajuste a su contenido
            ),
          ),
        ),
      ],
    );
  }

  Future scrollToItem(int index, Size size) async {
    scrollController.animateTo(
      size.height + 100,
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.linear,
    );
    contentScrollController.scrollTo(
      index: index,
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.decelerate,
    );
  }
}

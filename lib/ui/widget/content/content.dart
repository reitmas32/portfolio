import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';
import 'package:portfolio/ui/widget/contact_button.dart';
import 'package:portfolio/ui/widget/content/about_me.dart';
import 'package:portfolio/ui/widget/content/experience.dart';
import 'package:portfolio/ui/widget/content/highlishts.dart';
import 'package:portfolio/ui/widget/content/projects.dart';
import 'package:portfolio/ui/widget/content/skills.dart';
import 'package:portfolio/ui/widget/gradiente_text.dart';
import 'package:portfolio/ui/widget/section_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Content extends ConsumerWidget {
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
    SkillsSection(),
    ExperienceSection(),
    HighlightsSection(),
    ProjectsSection(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final currentLang = ref.watch(langProvider);
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    LangsSupported.data["title"]![currentLang] ?? "",
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
                  lable: dataBaseConnection.aboutLable[currentLang]!,
                  onTap: () => scrollToItem(0, size),
                ),
                SectionButton(
                  lable: dataBaseConnection.skillsLable[currentLang]!,
                  onTap: () => scrollToItem(1, size),
                ),
                SectionButton(
                  lable: dataBaseConnection.experienceLable[currentLang]!,
                  onTap: () => scrollToItem(2, size),
                ),
                SectionButton(
                  lable: dataBaseConnection.highlighstLable[currentLang]!,
                  onTap: () => scrollToItem(3, size),
                ),
                SectionButton(
                  lable: dataBaseConnection.projectsLable[currentLang]!,
                  onTap: () => scrollToItem(4, size),
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
          child: SizedBox(
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

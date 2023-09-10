import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/widget/contact_button.dart';
import 'package:portfolio/ui/widget/gradiente_text.dart';
import 'package:portfolio/ui/widget/section_button.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.isFullScroll,
  });

  final bool isFullScroll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  text: 'Rafa Zamora',
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
                    'Full Stack developer',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Desarrollador de software apasionado con 2 años de experiencia, creo en el aprendizaje constante y la colaboración en equipo.',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SectionButton(lable: 'About'),
                SectionButton(lable: 'Experince'),
                SectionButton(lable: 'Projects'),
                SectionButton(lable: 'Skills'),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContactButton(
                      iconData: EvaIcons.linkedinOutline,
                    ),
                    ContactButton(
                      iconData: EvaIcons.twitterOutline,
                    ),
                    ContactButton(
                      iconData: EvaIcons.githubOutline,
                    ),
                  ],
                ),
                SizedBox(
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
            height: 700,
            width: MediaQuery.of(context).size.width / 2,
            child: ListView(
              physics: !isFullScroll
                  ? const NeverScrollableScrollPhysics()
                  : null, // Evita el desplazamiento del ListView interior
              shrinkWrap:
                  true, // Hace que el ListView interior se ajuste a su contenido
              children: [
                Text(
                  dataBaseConnection.about,
                  style: GoogleFonts.montserrat(
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

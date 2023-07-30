import 'package:flutter/material.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            'About me',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width / 35 > 30 ? size.width / 35 : 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            'Hola!',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: size.width / 50 > 20 ? size.width / 50 : 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SelectableText(
            'Soy un apasionado desarrollador de software y entusiasta de la tecnología con 2 años de experiencia en projectos OpenSource. Mi experiencia abarca el uso de diversas herramientas, entre ellas: Python, Go, C++, Flutter, Docker, GitHub, PostgreSQL y Linux. Con python he construidos APIs, cron jobs y herramientas de línea de comandos.En paralelotambien he utilizado Go para el desarrollo de APIs.Para el control de versiones y el despliegue automatizado, utilizo GitHub, Docker y el sistema PaaS Render.com, Soy una persona que le encatan siempre estar aprendiendo cosas nuevas y fielmente creyente que cosas realmente significativas solo se logran en equipo, intercambiando ideas y aprendiendo de los demas. Mi objetivo es continuar creciendo y contribuyendo en el campo del desarrollo de software.',
            //overflow: TextOverflow.clip,
            maxLines: 20,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

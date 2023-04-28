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
          Text(
            'About me',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width / 35 > 30 ? size.width / 35 : 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Hola!',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: size.width / 50 > 20 ? size.width / 50 : 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Soy Rafa, ingeniero de computación entusiasta con 3 años de experiencia en la gestión de proyectos, lenguaje scripting, POO y Servicios de Escritorio Remoto.',
            overflow: TextOverflow.clip,
            maxLines: 6,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: size.width / 80 > 17 ? size.width / 80 : 17,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

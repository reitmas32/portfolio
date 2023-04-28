import 'package:flutter/material.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Hola!',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: MediaQuery.of(context).size.width / 50,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            child: Text(
              'Soy Rafa, ingeniero de computación entusiasta con 3 años de experiencia en la gestión de proyectos, lenguaje scripting, POO y Servicios de Escritorio Remoto.',
              overflow: TextOverflow.clip,
              maxLines: 6,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: MediaQuery.of(context).size.width / 80,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

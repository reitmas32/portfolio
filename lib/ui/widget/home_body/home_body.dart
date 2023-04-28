import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 1, child: Container(),),
      Expanded(
        flex: 3,
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          //height: 300,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selected Work',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 35,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hola!',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: MediaQuery.of(context).size.width / 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          //height: 300,
          child: Padding(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hola!',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: MediaQuery.of(context).size.width / 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
          ),
        ),
      ),
    ]);
  }
}

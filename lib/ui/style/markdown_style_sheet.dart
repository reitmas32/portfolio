import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

MarkdownStyleSheet markdownStyleSheet(BuildContext context, Size size) {
  return MarkdownStyleSheet(
    p: TextStyle(
      color: Theme.of(context).colorScheme.onPrimary,
      fontSize: 20.0,
    ),
    pPadding: const EdgeInsets.symmetric(vertical: 15.0),
    h1: TextStyle(
      color: Theme.of(context).colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
      fontSize: size.width > 720 ? size.width / 25 : size.width / 15,
    ),
    h1Padding: const EdgeInsets.symmetric(vertical: 50.0),
    h2: TextStyle(
      color: Theme.of(context).colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
      fontSize: size.width > 720 ? size.width / 45 : size.width / 25,
    ),
    h2Padding: const EdgeInsets.symmetric(vertical: 25.0),
    code: const TextStyle(
        fontFamily:
            'Monospace', // Utiliza una fuente monoespaciada para que cada carácter tenga el mismo ancho
        fontSize: 20.0, // Tamaño de fuente adecuado para código
        //color: Colors.black87, // Color del texto
        backgroundColor:
            Color.fromARGB(255, 126, 124, 124), // Color de fondo del texto
        letterSpacing: 1.2,
        height: 1.4 // Espaciado entre letras para obtener un aspecto de código
        ),
    codeblockPadding: const EdgeInsets.all(
      100.0,
    ),
    codeblockDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
    ),
  );
}

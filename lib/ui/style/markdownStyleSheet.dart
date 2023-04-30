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
      code: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: 15.0,
      ),
    );
  }
  import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/targed_text.dart';

List<Widget> getTarged(Project project) {
    final List<Widget> targeds = [];
    final listColors = [
      Colors.green[300],
      const Color.fromARGB(255, 244, 193, 54),
      Colors.blueAccent
    ];

    targeds.add(const TargedText(lable: 'TARGED:', color: Colors.white));
    int index = 0;
    for (var targed in project.tags) {
      targeds.add(
        TargedText(
          lable: targed.toUpperCase(),
          color: listColors[index % listColors.length] ?? Colors.white,
        ),
      );
      index++;
    }

    return targeds;
  }
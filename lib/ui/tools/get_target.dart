import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/targed_text.dart';

List<Widget> getTarged(Project project) {
  final List<Widget> targeds = [];
  final listColors = [
    Colors.orangeAccent,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.red,
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

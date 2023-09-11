import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/tecnology.dart';
import 'package:portfolio/ui/widget/tecnology_button.dart';

class TecnologiesWidget extends StatelessWidget {
  const TecnologiesWidget({
    super.key,
    required this.tecnologies,
  });

  final List<Technology> tecnologies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: generateTecnologiesButtons(),
      ),
    );
  }

  List<Widget> generateTecnologiesButtons() {
    List<Widget> buttons = [];
    for (var tecnology in tecnologies) {
      buttons.add(TecnologyButton(
        technology: tecnology,
      ));
    }
    return buttons;
  }
}

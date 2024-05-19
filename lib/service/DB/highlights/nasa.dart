import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

Experience HacksNasa = Experience(
  start: 'OCTOBER 2023',
  end: '',
  title: 'Winners NASA Space Apps Challenge CDMX',
  company: 'NASA',
  description: {
    LangsSupported.SPANISH: """
Junto con mi equipo, desarrollamos una solución eficiente y rápida para identificar la propagación de incendios forestales, permitiendo una intervención oportuna para evitar la pérdida de ecosistemas en áreas extensas. Para ello, diseñé un sistema de monitoreo que recibia datos de sensores en el area afectada y transmisión de video térmico proporcionado por drones de reconocimiento.

- Flutter
- IoT
""",
    LangsSupported.ENGLISH: """
Together with my team, we developed an efficient and rapid solution to identify the spread of wildfires, allowing for timely intervention to prevent the loss of ecosystems in large areas. To achieve this, I designed a monitoring system that received data from sensors in the affected area and transmitted thermal video provided by reconnaissance drones.

- Flutter
- IoT
"""
  },
);

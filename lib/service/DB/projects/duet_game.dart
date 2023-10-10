// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/tecnologies.dart';

Project DuetProject = Project(
  tecnologies: [Tecnologies.flutter],
  title: 'Duet Clone Game',
  titleHead: 'Duet Game',
  publishDate: DateTime.utc(2023, 6, 15),
  img:
      'https://raw.githubusercontent.com/reitmas32/portfolio/featstatic_files/public/assets/duet-banner.jpeg',
  description:
      'Duet is a minimalist and challenging puzzle game in which you control two points connected by a thread. The goal is to navigate through an obstacle field by rotating and twisting the thread to avoid colliding with the barriers.',
  tags: ['design', 'dev', 'Game', 'Flutter'],
  urlProject: 'https://duet-test-74834.web.app/',
  urlRepository: 'https://github.com/reitmas32/duet_game',
  content: """
![Image](https://raw.githubusercontent.com/reitmas32/portfolio/featstatic_files/public/assets/duet-banner.jpeg)
# Duet

Duet is a minimalist and challenging puzzle game in which you control two points connected by a thread. The goal is to navigate through an obstacle field by rotating and twisting the thread to avoid colliding with the barriers.

## Características

- Controles sencillos y precisos con un solo dedo.
- Gráficos minimalistas y elegantes.

## Contribuciones

¡Agradecemos las contribuciones a este proyecto! Si deseas colaborar, sigue las directrices para contribuir al código y abre solicitudes de extracción (Pull Requests). También puedes reportar problemas o sugerir mejoras a través de las issues en el repositorio de GitHub.

## Contacto

Si tienes preguntas o comentarios sobre el proyecto, no dudes en ponerte en contacto con el equipo de desarrollo a través de unihacks.mail@gmail.com.

¡Gracias por tu interés en nuestro proyecto! Esperamos que el Sistema de Préstamo de Equipos para Salas de UNICA sea de gran utilidad y facilite la administración de los recursos tecnológicos en la institución.

¡Disfruta jugando Duet y diviértete [Play](https://duet-test-74834.web.app/)!

""",
);

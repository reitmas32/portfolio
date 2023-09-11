// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/tecnologies.dart';

Project UNIHacksHomeProject = Project(
  tecnologies: [
    Tecnologies.flutter,
  ],
  title: 'UNIHacks',
  titleHead: 'UNIHacks',
  publishDate: DateTime.utc(2023, 9, 3),
  img:
      'https://raw.githubusercontent.com/reitmas32/home/main/assets/home_dark.png',
  description:
      'Somos un equipo diverso de estudiantes unidos por la pasión por la tecnología y la innovación, colaborando para abordar desafíos en nuestra comunidad universitaria.',
  tags: ['design', 'dev', 'flutter'],
  urlProject: 'https://unihacks.onrender.com',
  urlRepository: 'https://github.com/reitmas32/home',
  content: """
## UNIHacks - Landingpage

![Logo UNIHacks](https://raw.githubusercontent.com/reitmas32/home/main/assets/logo-unihacks.png)

Bienvenido a la página de inicio de UNIHacks. Somos una organización sin fines de lucro dedicada al desarrollo de proyectos de código abierto, creados y mantenidos por estudiantes apasionados por la tecnología de la Facultad de Ingeniería de la Universidad Nacional Autónoma de México (UNAM).

## Acerca de Nosotros

En UNIHacks, creemos en la colaboración, el aprendizaje y la innovación a través del código abierto. Nuestro objetivo es proporcionar un espacio donde los estudiantes de la UNAM puedan trabajar en proyectos tecnológicos emocionantes, adquirir experiencia práctica y contribuir al mundo del software libre.

## Únete a Nosotros

Si eres estudiante de la Facultad de Ingeniería de la UNAM y te apasiona la tecnología y el código abierto, ¡únete a nosotros! Aquí puedes aprender, colaborar y crear proyectos emocionantes con un grupo de compañeros entusiastas.

## Contacto

Si tienes alguna pregunta o estás interesado en colaborar con nosotros, no dudes en ponerte en contacto:

- Correo Electrónico: unihacks.mail@gmail.com
- Sitio Web: [unihacks.onrender.com](https://unihacks.onrender.com/)
- Redes Sociales: [GitHub](https://github.com/UniHacksOrg)

## Contribución

Si deseas contribuir a nuestra página de inicio o a alguno de nuestros proyectos, ¡estamos abiertos a colaboraciones! Solo tienes que hacer un fork del repositorio y crear una solicitud de extracción con tus mejoras.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](./LICENSE) para obtener más detalles.

---

¡Gracias por visitar la página de inicio de UNAM OpenSource Projects! Esperamos verte pronto en nuestros proyectos y eventos.

**Equipo de UNAM OpenSource Projects**

      """,
);

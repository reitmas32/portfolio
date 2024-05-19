import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

Experience InstructorFlutter = Experience(
  start: 'MARCH 2023',
  end: 'AUGUST 2023',
  title: 'Flutter Course Instructor',
  company: 'FI UNAM',
  description: {
    LangsSupported.SPANISH: """
Dirigí un curso básico de Flutter en la UNAM, introduciendo a los estudiantes a la creación de aplicaciones con este framework tan versátil de Google. A lo largo del curso llevamos a cabo tres proyectos clave:

- Calculadora Móvil
- Web personal
- Clon de interfaz de usuario de ChatGPT
""",
    LangsSupported.ENGLISH: """
I led a basic Flutter course at UNAM, introducing students to the creation of applications with this versatile Google framework. Throughout the course, we carried out three key projects: 

- Movil Calculator
- Personal Web
- ChatGPT UI clone
"""
  },
);

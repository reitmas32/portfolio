// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';

final Moon_Project = Project(
  title: 'Moon Engine',
  titleHead: 'Moon Engine',
  publishDate: DateTime.utc(2022, 7, 30),
  img:
      'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/moon-banner.png',
  description:
      'Moon es un Game Engine desarrollado por KEGE Studios escrito en C/C++, fue diseñado basado en la Arquitectura ECS y usando algunas funcionalidades del nuevo estándar de C++20.',
  tags: ['design', 'dev', 'Game Engine'],
  urlProject:
      'https://ambiguous-sweater-c99.notion.site/Moon-Engine-dd64f15918ca4c63b8c129dae2991d79',
  urlRepository: 'https://github.com/reitmas32/Moon',
  content: """
## **Introducción**

Moon es un Game Engine desarrollado por KEGE Studios escrito en C/C++, fue diseñado basado en la Arquitectura ECS y usando algunas funcionalidades del nuevo estándar de C++20.

### **Características principales**

- Eficiente en el uso de Recursos
- Arquitectura Kernel para el escalamiento e interacción entre los plugins
- Uso de la STL para los contenedores
- Concepts implementados para una mayor seguridad en templates
- Predicción de tipos en tiempo de compilación
- Un Core simple, liviano y libre
- Plugins pequeños y específicos
- Ejemplos para todos los plugins oficiales
- Solo incluyes lo que necesitas
- Independencia de plugins

### **Características de la versión**

- GameContext
- System
- Component
- Entity
- Herramienta de Instalacion y creacion de proyectos
- Uso de la STL para los contenedores
- Predicción de tipos en tiempo de compilación
      """,
);

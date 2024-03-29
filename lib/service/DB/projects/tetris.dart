// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/tecnologies.dart';

Project TetrisProject = Project(
  tecnologies: [
    Tecnologies.cpp,
  ],
  title: 'Tetris Game',
  titleHead: 'Tetris Game',
  publishDate: DateTime.utc(2020, 3, 15),
  img:
      'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/tetris-banner.png',
  description:
      'Juego basao en el clasico Tetris desarrollado con C++ y la biblioteca miniwin.',
  tags: ['design', 'dev', 'Game', 'C++'],
  urlProject: 'https://github.com/reitmas32/Tetris',
  urlRepository: 'https://github.com/reitmas32/Tetris',
  content: """
![Image](https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/tetris-banner.png)

## **Introducción**

Juego basao en el clasico Tetris desarrollado con C++ y la biblioteca miniwin

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

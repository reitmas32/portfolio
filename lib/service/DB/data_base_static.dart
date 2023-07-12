import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/data_base_i.dart';

class DataBaseStatic implements DataBase {
  final List<Project> data = [
    Project(
      title: 'Moon Engine',
      titleHead: 'Moon Engine',
      publishDate: DateTime.now(),
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
    ),
    Project(
      title: 'Next Package Manager',
      titleHead: 'Next Package Manager',
      publishDate: DateTime.now(),
      img:
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/next-homepage-img.png',
      description:
          'Next is a C/C++ project manager, it is designed as a solution to the administration that this type of projects require.',
      tags: ['design', 'dev', 'system'],
      urlProject: 'https://next-b3d34.web.app',
      urlRepository: 'https://github.com/reitmas32/Next',
      content: """
**Install with PyPi**

``` bash
pip install next-pm
```
    
**Install code stable**
``` bash
git clone https://github.com/reitmas32/Next.git
```

**Install code development**
``` bash
git clone https://github.com/reitmas32/Next.git
git checkout dev
```

**Setup**
``` bash
cd HOME # if your System is Windows use %%LOCALAPPDATA%%
mkdir .next
cd .next/
echo 'NEXT_DIR:<DIR_OF_NEXT_INSTALATION>
NEXT_PACKAGES_DIR:<DIR_OF_NEXT_PACKAGES> > env.yaml
```
      """,
    ),
    Project(
      title: 'Telegram Bot Fortnite',
      titleHead: 'Telegram Bot Fortnite',
      publishDate: DateTime.now(),
      img:
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/telegram_bot_fortnite.jpg',
      description: 'Bot Telegram to see the shop of Fortnite.',
      tags: ['dev', 'Telegram Bot', 'Python'],
      urlProject: 'https://github.com/reitmas32/Tele_Bot_Fortnite',
      urlRepository: 'https://github.com/reitmas32/Tele_Bot_Fortnite',
      content: """
## Info
Hello Im the Bot to see Shop of Fortnite


My commands: 
- /outfits
- /pickaxes 
- /backpacks 
- /emotes

The parameter section=[daily, featured, specialFeatured, specialDaily]')

Examples: 

- `/outfits daily`
- `/outfits featured`
- `/emotes daily`
- `/pickaxes featured`


<center><img src="https://raw.githubusercontent.com/reitmas32/Tele_Bot_Fortnite/master/public/help.png"></center>

<center><img src="https://raw.githubusercontent.com/reitmas32/Tele_Bot_Fortnite/master/public/outfits-daily.png"></center>

## Get Started

Remplace `TELEBOT_KEY = 'XXXXXXXXXXXXX'` for your telegram bot key show [Telegram API](https://core.telegram.org/api)
      """,
    ),
    Project(
      title: 'Tetris Game',
      titleHead: 'Tetris Game',
      publishDate: DateTime.now(),
      img:
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/tetris-banner.png',
      description:
          'Juego basao en el clasico Tetris desarrollado con C++ y la biblioteca miniwin.',
      tags: ['design', 'dev', 'Game', 'C++'],
      urlProject: 'https://github.com/reitmas32/Tetris',
      urlRepository: 'https://github.com/reitmas32/Tetris',
      content: """
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
    ),
  ];

  @override
  List<Project> getProjects() {
    return data;
  }

  @override
  Project getLastProject() {
    return data[1];
  }

  @override
  bool existsProject(String title) {
    bool find = false;
    for (var project in data) {
      if (project.title.replaceAll(RegExp(r"\s+"), "") == title) {
        find = true;
        break;
      }
    }
    return find;
  }

  @override
  Project getProject(String title) {
    late Project project;
    // ignore: no_leading_underscores_for_local_identifiers
    for (var _project in data) {
      if (_project.title.replaceAll(RegExp(r"\s+"), "") == title) {
        project = _project;
        break;
      }
    }
    return project;
  }
}

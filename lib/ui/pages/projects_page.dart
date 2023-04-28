import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/app_bar/portfolioAppBar.dart';
import 'package:portfolio/ui/widget/preview_project.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final List<Project> _projectsData = [
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
      content: 'content',
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
      content: 'content',
    ),
    Project(
      title: 'Telegram Bot Fortnite',
      titleHead: 'Telegram Bot Fortnite',
      publishDate: DateTime.now(),
      img:
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/telegram_bot_fortnite.jpg',
      description:
          'Bot Telegram to see the shop of Fortnite.',
      tags: ['dev', 'Telegram Bot', 'Python'],
      urlProject:
          'https://github.com/reitmas32/Tele_Bot_Fortnite',
      urlRepository: 'https://github.com/reitmas32/Tele_Bot_Fortnite',
      content: 'content',
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
      urlProject:
          'https://github.com/reitmas32/Tetris',
      urlRepository: 'https://github.com/reitmas32/Tetris',
      content: 'content',
    ),
  ];

  List<Widget> getProjects() {
    List<Widget> _projects = [];

    for (var projectData in _projectsData) {
      _projects.add(
        Center(
          child: PreviewProject(project: projectData),
        ),
      );
    }

    return _projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getProjects(),
            ),
          ],
        ),
      ),
    );
  }
}

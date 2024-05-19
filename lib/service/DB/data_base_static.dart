import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/domain/models/tecnology.dart';
import 'package:portfolio/service/DB/data_base_i.dart';
import 'package:portfolio/service/DB/experiences/fairplay.dart';
import 'package:portfolio/service/DB/experiences/intructor_flutter.dart';
import 'package:portfolio/service/DB/experiences/open_source_dev.dart';
import 'package:portfolio/service/DB/experiences/ui_ux_tester.dart';
import 'package:portfolio/service/DB/highlights/apple.dart';
import 'package:portfolio/service/DB/highlights/cemex.dart';
import 'package:portfolio/service/DB/highlights/nasa.dart';
import 'package:portfolio/service/DB/projects/duet_game.dart';
import 'package:portfolio/service/DB/projects/moon.dart';
import 'package:portfolio/service/DB/projects/next.dart';
import 'package:portfolio/service/DB/projects/telegram_bot_fortnite.dart';
import 'package:portfolio/service/DB/projects/tetris.dart';
import 'package:portfolio/service/DB/projects/unicyber.dart';
import 'package:portfolio/service/DB/projects/unihacks_home.dart';
import 'package:portfolio/service/DB/tecnologies.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

class DataBaseStatic implements DataBase {
  final List<Project> data = [
    //YonestoUIProject,
    UNIHacksHomeProject,
    UNICyberProject,
    Moon_Project,
    NextProject,
    TelegramBotProject,
    TetrisProject,
    DuetProject,
  ];

  final List<Experience> experiences = [
    Fairplay,
    InstructorFlutter,
    UXUITester,
    OpenSourceDev,
  ];

  final List<Experience> highlights = [
    HacksApple,
    HacksCemex,
    HacksNasa,
  ];

  final List<Technology> skills = [
    Tecnologies.python,
    Tecnologies.flask,
    Tecnologies.django,
    Tecnologies.fastapi,
    Tecnologies.grpc,
    Tecnologies.docker,
    Tecnologies.golang,
    Tecnologies.firebase,
    Tecnologies.flutter,
    Tecnologies.cpp,
    Tecnologies.aws,
    Tecnologies.bash,
    Tecnologies.git,
    Tecnologies.github,
    Tecnologies.postgres,
  ];

  final about = {
    LangsSupported.ENGLISH: """
I am a passionate software developer and technology enthusiast with 2 years of experience in OpenSource projects. My experience covers the use of several tools, among them: Python, Go, C++, Flutter, Docker, GitHub, PostgreSQL and Linux. With python I have built APIs, cron jobs and command line tools. In parallel I have also used Go for API development.for version control and automated deployment, I use GitHub, Docker and the PaaS system Render.com, I am a person who loves to always be learning new things and a true believer that really meaningful things are only achieved in teams, exchanging ideas and learning from others. My goal is to continue growing and contributing in the field of software development.
""",
    LangsSupported.SPANISH: """
Soy un apasionado desarrollador de software y entusiasta de la tecnología con 2 años de experiencia en proyectos OpenSource. Mi experiencia abarca el uso de varias herramientas, entre ellas: Python, Go, C++, Flutter, Docker, GitHub, PostgreSQL y Linux. Con Python he creado API, trabajos cron y herramientas de línea de comandos. Paralelamente también he usado Go para el desarrollo de API. Para el control de versiones y la implementación automatizada, uso GitHub, Docker y el sistema PaaS Render.com, soy una persona a la que le encanta estar siempre aprendiendo cosas nuevas y un verdadero creyente de lo realmente significativo. Las cosas sólo se consiguen en equipo, intercambiando ideas y aprendiendo de los demás. Mi objetivo es seguir creciendo y contribuyendo en el campo del desarrollo de software.
""",
  };

  final aboutLable = {
    LangsSupported.ENGLISH: "About",
    LangsSupported.SPANISH: "Sobre Mi",
  };

  final experienceLable = {
    LangsSupported.ENGLISH: "Experience",
    LangsSupported.SPANISH: "Experiencia",
  };

  final projectsLable = {
    LangsSupported.ENGLISH: "Projects",
    LangsSupported.SPANISH: "Proyectos",
  };

  final highlighstLable = {
    LangsSupported.ENGLISH: "Highlights",
    LangsSupported.SPANISH: "Reconocimientos",
  };

  final skillsLable = {
    LangsSupported.ENGLISH: "Skills",
    LangsSupported.SPANISH: "Habilidades",
  };

  final blogLable = {
    LangsSupported.ENGLISH: "Blog",
    LangsSupported.SPANISH: "Blog",
  };

  @override
  List<Project> getProjects() {
    return data;
  }

  @override
  Project getLastProject() {
    return data[1];
  }

  Future<Project> getLastProjectNoOverride() async {
    Project latestProject = data.reduce((currentProject, nextProject) {
      if (currentProject.publishDate.isAfter(nextProject.publishDate)) {
        return currentProject;
      } else {
        return nextProject;
      }
    });
    return latestProject;
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

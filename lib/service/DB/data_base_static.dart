import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/domain/models/tecnology.dart';
import 'package:portfolio/service/DB/data_base_i.dart';
import 'package:portfolio/service/DB/experiences/intructor_flutter.dart';
import 'package:portfolio/service/DB/experiences/open_source_dev.dart';
import 'package:portfolio/service/DB/experiences/ui_ux_tester.dart';
import 'package:portfolio/service/DB/projects/duet_game.dart';
import 'package:portfolio/service/DB/projects/moon.dart';
import 'package:portfolio/service/DB/projects/next.dart';
import 'package:portfolio/service/DB/projects/telegram_bot_fortnite.dart';
import 'package:portfolio/service/DB/projects/tetris.dart';
import 'package:portfolio/service/DB/projects/unicyber.dart';
import 'package:portfolio/service/DB/projects/unihacks_home.dart';
import 'package:portfolio/service/DB/projects/yonesto_ui.dart';
import 'package:portfolio/service/DB/tecnologies.dart';

class DataBaseStatic implements DataBase {
  final List<Project> data = [
    YonestoUIProject,
    UNIHacksHomeProject,
    UNICyberProject,
    Moon_Project,
    NextProject,
    TelegramBotProject,
    TetrisProject,
    DuetProject,
  ];

  final List<Experience> experiences = [
    InstructorFlutter,
    UXUITester,
    OpenSourceDev,
  ];
  final List<Technology> skills = [
    Tecnologies.python,
    Tecnologies.flask,
    Tecnologies.django,
    Tecnologies.docker,
    Tecnologies.golang,
    Tecnologies.flutter,
    Tecnologies.postgres,
    Tecnologies.cpp,
    Tecnologies.aws,
    Tecnologies.bash,
    Tecnologies.firebase,
    Tecnologies.git,
    Tecnologies.github,
  ];

  final about = """
Soy un apasionado desarrollador de software y entusiasta de la tecnología con 2 años de experiencia en projectos OpenSource. Mi experiencia abarca el uso de diversas herramientas, entre ellas: Python, Go, C++, Flutter, Docker, GitHub, PostgreSQL y Linux. Con python he construidos APIs, cron jobs y herramientas de línea de comandos.En paralelotambien he utilizado Go para el desarrollo de APIs.Para el control de versiones y el despliegue automatizado, utilizo GitHub, Docker y el sistema PaaS Render.com, Soy una persona que le encatan siempre estar aprendiendo cosas nuevas y fielmente creyente que cosas realmente significativas solo se logran en equipo, intercambiando ideas y aprendiendo de los demas. Mi objetivo es continuar creciendo y contribuyendo en el campo del desarrollo de software.
""";

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

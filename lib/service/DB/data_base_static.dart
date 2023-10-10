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
I am a passionate software developer and technology enthusiast with 2 years of experience in OpenSource projects. My experience covers the use of several tools, among them: Python, Go, C++, Flutter, Docker, GitHub, PostgreSQL and Linux. With python I have built APIs, cron jobs and command line tools. In parallel I have also used Go for API development.for version control and automated deployment, I use GitHub, Docker and the PaaS system Render.com, I am a person who loves to always be learning new things and a true believer that really meaningful things are only achieved in teams, exchanging ideas and learning from others. My goal is to continue growing and contributing in the field of software development.
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

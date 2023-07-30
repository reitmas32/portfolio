import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/data_base_i.dart';
import 'package:portfolio/service/DB/projects/duet_game.dart';
import 'package:portfolio/service/DB/projects/moon.dart';
import 'package:portfolio/service/DB/projects/next.dart';
import 'package:portfolio/service/DB/projects/telegram_bot_fortnite.dart';
import 'package:portfolio/service/DB/projects/tetris.dart';
import 'package:portfolio/service/DB/projects/unicyber.dart';

class DataBaseStatic implements DataBase {
  final List<Project> data = [
    Moon_Project,
    NextProject,
    TelegramBotProject,
    TetrisProject,
    UNICyberProject,
    DuetProject,
  ];

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

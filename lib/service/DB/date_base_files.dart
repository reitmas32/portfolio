import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/data_base_i.dart';

class DataBaseFiles implements DataBase {
  final List<Project> data = [];

  loadFiles() async {
    data.add(
      await Project.fromYamlFileWeb(
        'https://raw.githubusercontent.com/reitmas32/portfolio/main/lib/service/DB/projects/moon.yaml',
      ),
    );
    data.add(
      await Project.fromYamlFileWeb(
        'https://raw.githubusercontent.com/reitmas32/portfolio/main/lib/service/DB/projects/tetris.yaml',
      ),
    );
    data.add(
      await Project.fromYamlFileWeb(
        'https://raw.githubusercontent.com/reitmas32/portfolio/main/lib/service/DB/projects/telegram_bot_fortnite.yaml',
      ),
    );
    data.add(
      await Project.fromYamlFileWeb(
        'https://raw.githubusercontent.com/reitmas32/portfolio/featstatic_files/lib/service/DB/projects/next.yaml',
      ),
    );
  }

  @override
  List<Project> getProjects() {
    return data;
  }

  Future<Project> getLastProject_nooverride() async {
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
    for (var _project in data) {
      if (_project.title.replaceAll(RegExp(r"\s+"), "") == title) {
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

  @override
  Project getLastProject() {
    // TODO: implement getLastProject
    throw UnimplementedError();
  }
}

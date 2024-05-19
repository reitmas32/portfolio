import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/data_base_i.dart';

class DataBaseFiles implements DataBase {
  final List<Project> data = [];

  @override
  List<Project> getProjects() {
    return data;
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

  @override
  Project getLastProject() {
    throw UnimplementedError();
  }
}

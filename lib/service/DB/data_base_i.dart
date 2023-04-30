import 'package:portfolio/domain/models/project.dart';

class DataBase{
  List<Project> getProjects(){
    return throw Exception('No implemented getProjects');
  }

  Project getLastProject(){
    return throw Exception('No implemented getProject');
  }

  Project getProject(String title){
    return throw Exception('No implemented getProject');
  }

  bool existsProject(String title) {
    return throw Exception('No implemented existsProject');
  }
}
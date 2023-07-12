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

  @override
  Project getLastProject() {
    if (data.isEmpty) {
      var project = Project(
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
      );

      data.add(project);
      return project;
    }
    return data[0];
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
}

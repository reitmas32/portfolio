import 'package:portfolio/domain/models/tecnology.dart';

abstract class Tecnologies {
  static const String path =
      'https://raw.githubusercontent.com/reitmas32/portfolio/5b319bec1a0db49b1c250f54f246ae9d07392a5d/assets/logos';

  /// Completely invisible.
  static Technology flutter = const Technology(
    name: 'Flutter',
    url: 'https://flutter.dev/',
    logo: '${Tecnologies.path}/flutter.svg',
  );
  static Technology python = const Technology(
    name: 'Pyhton',
    url: 'https://www.python.org/',
    logo: '${Tecnologies.path}/python.svg',
  );
  static Technology flask = const Technology(
    name: 'Flask',
    url: 'https://flask.palletsprojects.com/en/2.3.x/',
    logo: '${Tecnologies.path}/flask.svg',
  );
  static Technology golang = const Technology(
    name: 'Go',
    url: 'https://go.dev/',
    logo: '${Tecnologies.path}/golang.svg',
  );
  static Technology django = const Technology(
    name: 'Django',
    url: 'https://www.djangoproject.com/',
    logo: '${Tecnologies.path}/django.svg',
  );
  static Technology gin = const Technology(
    name: 'Gin',
    url: 'https://gin-gonic.com/',
    logo:
        'https://raw.githubusercontent.com/gin-gonic/logo/eecb3150aa7ce5a77b97fd834276b2b6958eaa9d/color.svg',
  );
  static Technology postgres = const Technology(
    name: 'PostgreSQL',
    url: 'https://www.postgresql.org/',
    logo: '${Tecnologies.path}/postgresql.svg',
  );
  static Technology docker = const Technology(
    name: 'Docker',
    url: 'https://www.docker.com/',
    logo: '${Tecnologies.path}/docker.svg',
  );
  static Technology cpp = const Technology(
    name: 'C/C++',
    url: 'https://es.cppreference.com',
    logo: '${Tecnologies.path}/cpp.svg',
  );
  static Technology aws = const Technology(
    name: 'AWS',
    url: 'https://aws.amazon.com/',
    logo: '${Tecnologies.path}/aws.svg',
  );
  static Technology firebase = const Technology(
    name: 'Firebase',
    url: 'https://firebase.google.com/',
    logo: '${Tecnologies.path}/firebase.svg',
  );
  static Technology git = const Technology(
    name: 'Git',
    url: 'https://git-scm.com/',
    logo: '${Tecnologies.path}/git.svg',
  );
  static Technology github = const Technology(
    name: 'GitHub',
    url: 'https://github.com/',
    logo: '${Tecnologies.path}/github.svg',
  );
  static Technology linux = const Technology(
    name: 'Linux',
    url: 'https://www.linux.org/',
    logo: '${Tecnologies.path}/linux.svg',
  );
  static Technology bash = const Technology(
    name: 'Bash',
    url: 'https://www.gnu.org/software/bash/',
    logo: '${Tecnologies.path}/bash.svg',
  );
}

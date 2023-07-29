// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';

Project NextProject = Project(
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

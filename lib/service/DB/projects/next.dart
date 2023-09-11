// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/tecnologies.dart';

Project NextProject = Project(
  tecnologies: [
    Tecnologies.cpp,
    Tecnologies.python,
  ],
  title: 'Next Package Manager',
  titleHead: 'Next Package Manager',
  publishDate: DateTime.utc(2023, 3, 28),
  img:
      'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/next-homepage-img.png',
  description:
      'Next is a C/C++ project manager, it is designed as a solution to the administration that this type of projects require.',
  tags: ['design', 'dev', 'system'],
  urlProject: 'https://next-b3d34.web.app',
  urlRepository: 'https://github.com/reitmas32/Next',
  content: """
![Image](https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/next-homepage-img.png)

**Install with PyPi**


###### pip install next-pm

    
**Install code stable**

###### git clone 'https://github.com/reitmas32/Next.git'


**Install code development**
###### git clone 'https://github.com/reitmas32/Next.git' <\br>git checkout dev


**Setup**

###### cd HOME # if your System is Windows use %%LOCALAPPDATA%%
###### mkdir .next
###### cd .next/
###### echo 'NEXT_DIR:<DIR_OF_NEXT_INSTALATION>
###### NEXT_PACKAGES_DIR:<DIR_OF_NEXT_PACKAGES> > env.yaml
      """,
);

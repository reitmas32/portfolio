import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/button_project.dart';
import 'package:portfolio/ui/widget/preview_project.dart';

class SelectedWork extends StatelessWidget {
  const SelectedWork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Project _prject = Project(
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
      content: 'content',
    );

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Work',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width / 35 > 30 ? size.width / 35 : 30,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20,
          ),
          PreviewProject(project: _prject),
          Center(
              child: ButtonProjects(
            lable: 'View All',
            onTap: () {
              context.go('/projects');
            },
          ))
        ],
      ),
    );
  }
}

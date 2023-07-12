import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/widget/app_bar/portfolioAppBar.dart';
import 'package:portfolio/ui/widget/fotter/fotter.dart';
import 'package:portfolio/ui/widget/preview_project.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<Widget> getProjects() {
    List<Widget> projects = [];

    for (var projectData in dataBaseConnection.getProjects()) {
      projects.add(
        Center(
          child: PreviewProject(project: projectData),
        ),
      );
    }

    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getProjects(),
            ),
            Fotter(),
          ],
        ),
      ),
    );
  }
}

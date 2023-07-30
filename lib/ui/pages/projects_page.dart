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
        PreviewProject(project: projectData),
      );
    }

    return projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const PortfolioAppBar(),
      body: CustomScrollView(
        slivers: [
          const PortfolioSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 50.0),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: getProjects(),
                  ),
                  const Fotter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

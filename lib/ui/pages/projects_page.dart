import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/providers/data_base_provider.dart';
import 'package:portfolio/ui/widget/app_bar/portfolioAppBar.dart';
import 'package:portfolio/ui/widget/preview_project.dart';
import 'package:provider/provider.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  List<Widget> getProjects() {
    final dataBaseProvider = Provider.of<DataBaseProvider>(context);

    List<Widget> _projects = [];

    for (var projectData in dataBaseProvider.getServiceDataBase().getProjects()) {
      _projects.add(
        Center(
          child: PreviewProject(project: projectData),
        ),
      );
    }

    return _projects;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 50.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getProjects(),
            ),
          ],
        ),
      ),
    );
  }
}

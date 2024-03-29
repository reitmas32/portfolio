import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/tools/get_target.dart';
import 'package:portfolio/ui/widget/app_bar/portfolioAppBar.dart';
import 'package:portfolio/ui/widget/button_project.dart';
import 'package:portfolio/ui/widget/fotter/fotter.dart';
import 'package:portfolio/ui/widget/info_project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key, required this.title});

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  late Project project;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (dataBaseConnection.existsProject(widget.title)) {
      project = dataBaseConnection.getProject(widget.title);
    } else {
      context.go('/error');
    }
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: size.height / 10,
          padding: const EdgeInsets.all(20.0),
          color: Theme.of(context).colorScheme.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getTarged(project),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const PortfolioSliverAppBar(),
          SliverFillRemaining(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        project.title.toUpperCase(),
                        style:
                            GoogleFonts.secularOne(fontSize: size.width / 20),
                      ),
                    ),
                  ),
                  InfoProject(size: size, project: project),
                  const SizedBox(
                    height: 50,
                  ),
                  Wrap(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      ButtonProjects(
                        lable: 'URL REPOSITORY',
                        onTap: () async {
                          if (!await launchUrl(
                              Uri.parse(project.urlRepository))) {
                            throw Exception(
                                'Could not launch ${project.urlRepository}');
                          }
                        },
                      ),
                      ButtonProjects(
                        lable: 'URL PROJECT',
                        onTap: () async {
                          if (!await launchUrl(Uri.parse(project.urlProject))) {
                            throw Exception(
                                'Could not launch ${project.urlProject}');
                          }
                        },
                      ),
                    ],
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/providers/data_base_provider.dart';
import 'package:portfolio/ui/widget/button_project.dart';
import 'package:portfolio/ui/widget/preview_project.dart';
import 'package:provider/provider.dart';

class SelectedWork extends StatelessWidget {
  const SelectedWork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          FutureBuilder<Project>(
            future: dataBaseConnection.getLastProject_nooverride(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Mientras el Future está en proceso
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // Si hay un error en el Future
                return Text('Error: ${snapshot.error}');
              } else {
                // Cuando el Future se completa exitosamente
                final project = snapshot.data;
                return PreviewProject(
                  project: project,
                );
              }
            },
          ),
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

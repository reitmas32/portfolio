import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

    final dataBaseProvider = Provider.of<DataBaseProvider>(context);
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
          PreviewProject(
            project: dataBaseProvider.getServiceDataBase().getLastProject(),
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

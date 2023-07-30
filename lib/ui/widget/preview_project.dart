import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/tools/get_target.dart';
import 'package:portfolio/ui/widget/button_project.dart';

class PreviewProject extends StatefulWidget {
  const PreviewProject({
    super.key,
    required this.project,
  });

  final Project? project;

  @override
  State<PreviewProject> createState() => _PreviewProjectState();
}

class _PreviewProjectState extends State<PreviewProject> {
  double fontSizeButton = 25.0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: size.width > 1000 ? size.width / 3 : size.width / 1.4,
      child: Column(
        children: [
          Image.network(
            widget.project!.img,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  widget.project!.description,
                ),
                if (size.width > 1200)
                  Row(
                    children: getTarged(widget.project!),
                  )
                else
                  Container(),
              ],
            ),
          ),
          ButtonProjects(
            lable: 'View More',
            onTap: () async {
              /*
              if (!await launchUrl(Uri.parse(widget.project.urlProject))) {
                throw Exception('Could not launch ${widget.project.urlProject}');
              }
              */
              context.go(
                  '/projects/${widget.project!.title.replaceAll(RegExp(r"\s+"), "")}');
            },
          ),
        ],
      ),
    );
  }
}

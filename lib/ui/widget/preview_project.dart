import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/button_project.dart';
import 'package:url_launcher/url_launcher.dart';

class PreviewProject extends StatefulWidget {
  const PreviewProject({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  State<PreviewProject> createState() => _PreviewProjectState();
}

class _PreviewProjectState extends State<PreviewProject> {
  double fontSizeButton = 25.0;

  List<Widget> getTarged() {
    final List<Widget> _targeds = [];
    final listColors = [
      Colors.green[300],
      Color.fromARGB(255, 244, 193, 54),
      Colors.blueAccent
    ];

    _targeds.add(TargedText(lable: 'TARGED:', color: Colors.white));
    int index = 0;
    for (var targed in widget.project.tags) {
      _targeds.add(
        TargedText(
          lable: targed.toUpperCase(),
          color: listColors[index % listColors.length] ?? Colors.white,
        ),
      );
      index++;
    }

    return _targeds;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      width: size.width / 1.4,
      child: Column(
        children: [
          Image.network(
            widget.project.img,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  widget.project.description,
                ),
                size.width > 1200
                    ? Row(
                        children: getTarged(),
                      )
                    : Container(),
              ],
            ),
          ),
          ButtonProjects(
            lable: 'View More',
            onTap: () async {
              if (!await launchUrl(Uri.parse(widget.project.urlProject))) {
                throw Exception('Could not launch ${widget.project.urlProject}');
              }
            },
          ),
        ],
      ),
    );
  }
}

class TargedText extends StatelessWidget {
  const TargedText({
    super.key,
    required this.lable,
    required this.color,
  });

  final String lable;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        lable,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

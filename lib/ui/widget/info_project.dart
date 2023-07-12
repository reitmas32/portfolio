import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/style/markdown_style_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoProject extends StatelessWidget {
  const InfoProject({
    super.key,
    required this.size,
    required this.project,
  });

  final Size size;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      padding: EdgeInsets.symmetric(
        horizontal: size.width > 720 ? size.width / 7 : size.width / 15,
      ),
      child: Markdown(
        data: project.content,
        selectable: true,
        styleSheet: markdownStyleSheet(context, size),
        onTapLink: (text, href, title) async {
          if (!await launchUrl(Uri.parse(href ?? ''))) {
            throw Exception('Could not launch $href');
          }
        },
      ),
    );
  }
}

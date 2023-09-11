import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/domain/models/project.dart';
import 'package:portfolio/ui/widget/tecnologies.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: ((event) {
        setState(() {
          isHover = true;
        });
      }),
      onExit: ((event) {
        setState(() {
          isHover = false;
        });
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: isHover
                ? const Color.fromARGB(32, 137, 77, 160)
                : Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    right: 8.0,
                  ),
                  child: Image.network(
                    widget.project.img,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleProject(
                      title: widget.project.title,
                      url: widget.project.urlProject,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Text(
                        widget.project.description,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    TecnologiesWidget(
                      tecnologies: widget.project.tecnologies,
                    ),
                    RepositoryButton(
                      url: widget.project.urlRepository,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RepositoryButton extends StatefulWidget {
  const RepositoryButton({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<RepositoryButton> createState() => _RepositoryButtonState();
}

class _RepositoryButtonState extends State<RepositoryButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: MouseRegion(
        onHover: ((event) {
          setState(() {
            isHover = true;
          });
        }),
        onExit: ((event) {
          setState(() {
            isHover = false;
          });
        }),
        child: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => _externalLaunchUrl(widget.url),
          child: Row(
            children: [
              Icon(
                EvaIcons.github,
                color: isHover ? Colors.purple : Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'GitHub',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: isHover ? FontWeight.bold : FontWeight.w200,
                  color: isHover ? Colors.purple : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _externalLaunchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}

class TitleProject extends StatefulWidget {
  const TitleProject({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  State<TitleProject> createState() => _TitleProjectState();
}

class _TitleProjectState extends State<TitleProject> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: ((event) {
        setState(() {
          isHover = true;
        });
      }),
      onExit: ((event) {
        setState(() {
          isHover = false;
        });
      }),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => _externalLaunchUrl(widget.url),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Row(
            children: [
              Text(
                widget.title,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: isHover ? Colors.purple : Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_outward_rounded,
                color: isHover ? Colors.purple : Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _externalLaunchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/domain/models/tecnology.dart';
import 'package:url_launcher/url_launcher.dart';

class TecnologyButton extends StatefulWidget {
  const TecnologyButton({
    super.key,
    required this.technology,
  });

  final Technology technology;

  @override
  State<TecnologyButton> createState() => _TecnologyButtonState();
}

class _TecnologyButtonState extends State<TecnologyButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
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
          onTap: _externalLaunchUrl,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isHover
                      ? const Color.fromARGB(255, 12, 131, 227)
                      : Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            child: Text(
              widget.technology.name,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: isHover
                    ? const Color.fromARGB(255, 12, 131, 227)
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _externalLaunchUrl() async {
    if (!await launchUrl(Uri.parse(widget.technology.url))) {
      throw Exception('Could not launch ${widget.technology.url}');
    }
  }
}

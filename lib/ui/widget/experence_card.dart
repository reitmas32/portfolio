import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

class ExperienceCard extends ConsumerStatefulWidget {
  const ExperienceCard({super.key, required this.experience});

  final Experience experience;

  @override
  ConsumerState<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends ConsumerState<ExperienceCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final currentLang = ref.watch(langProvider);
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: isHover
                ? const Color.fromARGB(32, 137, 77, 160)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Text(widget.experience.start),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Text(widget.experience.end),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: SelectableText(
                          widget.experience.company,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: SelectableText(
                          widget.experience.title,
                          style: GoogleFonts.montserrat(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: SelectableText(
                          widget.experience.description[currentLang]!,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

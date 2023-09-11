import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/widget/content/generate_items.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          ...generateExperienceCards(),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}

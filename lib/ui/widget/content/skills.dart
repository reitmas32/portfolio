import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/ui/widget/content/generate_items.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skils',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Wrap(
            children: generateSckilsIcons(),
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}

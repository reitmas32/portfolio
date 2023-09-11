import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/service/DB/database.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AboutMe',
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 30),
            child: Text(
              dataBaseConnection.about,
              style: GoogleFonts.montserrat(
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}

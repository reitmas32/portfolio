import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';
import 'package:portfolio/ui/widget/content/generate_items.dart';

class SkillsSection extends ConsumerWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLang = ref.watch(langProvider);
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataBaseConnection.skillsLable[currentLang]!,
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

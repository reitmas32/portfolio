import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/domain/models/tecnology.dart';

class Skill extends StatefulWidget {
  const Skill({
    super.key,
    required this.skill,
  });

  final Technology skill;

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            SvgPicture.network(
              widget.skill
                  .logo!, // Reemplaza 'your_image.svg' con la ruta de tu imagen SVG
              //width: 5,
              height: 80,
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: GoogleFonts.montserrat(
                color: isHover || size.width < 700
                    ? Colors.white
                    : Colors.transparent,
              ),
              child: Text(
                widget.skill.name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

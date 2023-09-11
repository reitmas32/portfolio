import 'package:flutter/material.dart';
import 'package:portfolio/service/DB/database.dart';
import 'package:portfolio/ui/widget/experence_card.dart';
import 'package:portfolio/ui/widget/project_card.dart';
import 'package:portfolio/ui/widget/skill.dart';

List<Widget> generateExperienceCards() {
  List<Widget> cards = [];
  for (var experience in dataBaseConnection.experiences) {
    cards.add(ExperienceCard(
      experience: experience,
    ));
  }
  return cards;
}

List<Widget> generateSckilsIcons() {
  List<Widget> skills = [];
  for (var skill in dataBaseConnection.skills) {
    skills.add(
      Skill(skill: skill),
    );
  }
  return skills;
}

List<Widget> generateProjectsCards() {
  List<Widget> cards = [];
  for (var projects in dataBaseConnection.data) {
    cards.add(ProjectCard(
      project: projects,
    ));
  }
  return cards;
}

import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

Experience UXUITester = Experience(
  start: 'APRIL 2023',
  end: 'Actuality',
  title: 'UX/UI Tester',
  company: 'Dirección General de Bibliotecas UNAM',
  description: {
    LangsSupported.SPANISH: """
Durante mi paso por la Dirección General de Bibliotecas UNAM, asumí el rol de Ingeniero de Pruebas UI/UX para una aplicación de consulta y autopréstamo de libros. Mi trabajo se centró en asegurar la calidad de la experiencia del usuario y la funcionalidad de la aplicación, contribuyendo al éxito del proyecto.
""",
    LangsSupported.ENGLISH: """
During my time at the Dirección General de Bibliotecas UNAM, I assumed the role of a UI/UX Testing Engineer for a book consultation and self-loaning application. My work focused on ensuring the quality of the user experience and the functionality of the application, contributing to the success of the project.
"""
  },
);

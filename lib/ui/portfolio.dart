import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/ui/pages/about_page.dart';
import 'package:portfolio/ui/pages/error_page.dart';
import 'package:portfolio/ui/pages/home.dart';
import 'package:portfolio/ui/pages/project_page.dart';
import 'package:portfolio/ui/pages/projects_page.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:portfolio/ui/theme_preference.dart';
import 'package:provider/provider.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({
    super.key,
  });

  @override
  State<Portfolio> createState() => PortfolioState();
}

class PortfolioState extends State<Portfolio> {
  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: "/projects",
        builder: (context, state) => const ProjectsPage(),
      ),
      GoRoute(
        path: "/about",
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: "/projects/:title",
        builder: (context, state) => ProjectPage(
          title: state.params['title'] ?? '',
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme:
          currentTheme.isDarkTheme() ? AppTheme.darkTheme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/my_home_page.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:portfolio/ui/theme_preference.dart';
import 'package:provider/provider.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theming',
      home: MyHomePage(title: 'Flutter theming'),
      theme: currentTheme.isDarkTheme()
          ? AppTheme.darkTheme
          : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
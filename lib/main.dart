import 'package:flutter/material.dart';
import 'package:portfolio/ui/portfolio.dart';
import 'package:portfolio/ui/providers/data_base_provider.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();
  DataBaseProvider dataBaseProvider = DataBaseProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.setTheme =
        await themeChangeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: themeChangeProvider,
      child: ChangeNotifierProvider.value(
        value: dataBaseProvider,
        child: const Portfolio(),
      ),
    );
  }
}

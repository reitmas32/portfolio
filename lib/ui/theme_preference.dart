import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color.fromARGB(255, 233, 227, 227),
      primaryColor: Colors.green,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(255, 239, 237, 237),
          onPrimary: Color.fromARGB(255, 31, 30, 30),
          secondary: Color.fromARGB(255, 173, 174, 176),
          onSecondary: Color.fromARGB(255, 12, 12, 12),
          error: Color.fromARGB(255, 255, 0, 0),
          onError: Color.fromARGB(255, 255, 255, 255),
          background: Color.fromARGB(255, 255, 255, 255),
          onBackground: Color.fromARGB(255, 255, 255, 255),
          surface: Color.fromARGB(255, 255, 255, 255),
          onSurface: Color.fromARGB(255, 255, 255, 255))
      //Color colorButtonAppBar = Colors.white
      );
  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color.fromARGB(255, 56, 53, 53),
      primaryColor: Colors.green,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color.fromARGB(255, 62, 61, 61),
          onPrimary: Color.fromARGB(255, 255, 255, 255),
          secondary: Color.fromARGB(255, 89, 106, 135),
          onSecondary: Color.fromARGB(255, 12, 12, 12),
          error: Color.fromARGB(255, 220, 15, 15),
          onError: Color.fromARGB(255, 255, 255, 255),
          background: Color.fromARGB(255, 255, 255, 255),
          onBackground: Color.fromARGB(255, 255, 255, 255),
          surface: Color.fromARGB(255, 255, 255, 255),
          onSurface: Color.fromARGB(255, 255, 255, 255))
      //Color colorButtonAppBar = Colors.white
      );
}

class ThemePreference {
  // ignore: constant_identifier_names
  static const THEME_MODE = "MODE";
  // ignore: constant_identifier_names
  static const DARK = "DARK";
  // ignore: constant_identifier_names
  static const LIGHT = "LIGHT";

  setModeTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(THEME_MODE, theme);
  }

  Future<String> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(THEME_MODE) ?? LIGHT;
  }
}

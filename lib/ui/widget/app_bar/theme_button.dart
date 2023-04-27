import 'package:flutter/material.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:portfolio/ui/theme_preference.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.nameTheme,
  });

  final String nameTheme;

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    Function selectColors = () {
      return Colors.grey;
    };
    void Function() onTap = () {};
    IconData icon = Icons.wb_sunny;
    
    if (nameTheme == ThemePreference.LIGHT) {
      
      selectColors = () {
        return currentTheme.isDarkTheme() ? Colors.grey : Colors.orangeAccent;
      };
      
      onTap = () {
        if (currentTheme.isDarkTheme()) {
          currentTheme.setTheme = ThemePreference.LIGHT;
        }
      };
      
      icon = Icons.light_mode;
    } else {
      
      selectColors = () {
        return currentTheme.isDarkTheme() ? Colors.blueAccent : Colors.grey;
      };
      onTap = () {
        if (!currentTheme.isDarkTheme()) {
          currentTheme.setTheme = ThemePreference.DARK;
        }
      };
      
      icon = Icons.dark_mode;
    }

    return InkWell(
      borderRadius: BorderRadius.circular(25.0),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon, color: selectColors(), size: 25.0,),
      ),
    );
  }
}
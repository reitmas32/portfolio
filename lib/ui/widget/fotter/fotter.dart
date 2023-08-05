import 'package:flutter/material.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class Fotter extends StatelessWidget {
  const Fotter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      color: currentTheme.isDarkTheme()
          ? const Color.fromARGB(255, 94, 93, 93)
          : Color.fromARGB(255, 196, 194, 194),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('© 2023 Rafa Zamora'),
            SizedBox(
              height: 25,
            ),
            Text('🚀 BUILT BY FLUTTER'),
          ],
        ),
      ),
    );
  }
}

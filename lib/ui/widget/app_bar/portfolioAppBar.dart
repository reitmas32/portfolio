// ignore: file_names
import 'package:flutter/material.dart';
import 'package:portfolio/ui/theme_preference.dart';
import 'package:portfolio/ui/widget/app_bar/button_app_bar.dart';
import 'package:portfolio/ui/widget/app_bar/logo_button_menu.dart';
import 'package:portfolio/ui/widget/app_bar/theme_button.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/ui/providers/theme_provider.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({
    super.key,
  });

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            ThemeButton(nameTheme: ThemePreference.LIGHT,),
            ThemeButton(nameTheme: ThemePreference.DARK,),
            
          ],
        )
      ],
      title: Row(
        children: const [
          LogoButtonMenu(),
          ButtonAppBar(lable: 'Projects'),
          ButtonAppBar(lable: 'About'),
        ],
      ),
      toolbarHeight: MediaQuery.of(context).size.height / 12,
      //toolbarHeight: MediaQuery.of(context).size.height / 12,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}

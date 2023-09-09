// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:portfolio/ui/theme_preference.dart';
import 'package:portfolio/ui/widget/app_bar/button_app_bar.dart';
import 'package:portfolio/ui/widget/app_bar/button_icon.dart';
import 'package:portfolio/ui/widget/app_bar/button_image.dart';
import 'package:portfolio/ui/widget/app_bar/theme_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({
    super.key,
  });

  List<Widget> getActions(double width) {
    // ignore: no_leading_underscores_for_local_identifiers
    List<Widget> _actions = [];

    if (width > 750) {
      _actions.add(
        const ButtonIcon(
          url: 'https://www.linkedin.com/in/rafazamora',
          external: true,
          iconData: EvaIcons.linkedin,
        ),
      );
      _actions.add(
        const ButtonIcon(
          url: 'https://github.com/reitmas32',
          external: true,
          iconData: EvaIcons.github,
        ),
      );
      _actions.add(
        const ButtonIcon(
          url: 'https://twitter.com/rafazram',
          external: true,
          iconData: EvaIcons.twitter,
        ),
      );
    }
    _actions.add(const SizedBox(
      width: 40.0,
    ));
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.LIGHT,
      ),
    );
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.DARK,
      ),
    );
    _actions.add(
      const SizedBox(
        width: 40.0,
      ),
    );

    return _actions;
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getActions(MediaQuery.of(context).size.width))
      ],
      title: const Row(
        children: [
          ButtonImage(
            url: '/',
            imageUrl:
                'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/logo.png',
          ),
          ButtonAppBar(lable: 'Projects'),
          //ButtonAppBar(lable: 'About'),
        ],
      ),
      toolbarHeight: MediaQuery.of(context).size.height / 12,
      //toolbarHeight: MediaQuery.of(context).size.height / 12,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}

class PortfolioSliverAppBar extends StatelessWidget {
  const PortfolioSliverAppBar({
    super.key,
  });

  List<Widget> getActions(double width) {
    // ignore: no_leading_underscores_for_local_identifiers
    List<Widget> _actions = [];

    if (width > 750) {
      _actions.add(
        const ButtonIcon(
          url: 'https://twitter.com/rafazram',
          external: true,
          iconData: EvaIcons.linkedin,
        ),
      );
      _actions.add(
        const ButtonIcon(
          url: 'https://github.com/reitmas32',
          external: true,
          iconData: EvaIcons.github,
        ),
      );
      _actions.add(
        const ButtonIcon(
          url: 'https://twitter.com/rafazram',
          external: true,
          iconData: EvaIcons.twitter,
        ),
      );
    }
    _actions.add(const SizedBox(
      width: 40.0,
    ));
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.LIGHT,
      ),
    );
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.DARK,
      ),
    );
    _actions.add(
      const SizedBox(
        width: 40.0,
      ),
    );

    return _actions;
  }

  @override
  SliverAppBar build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getActions(MediaQuery.of(context).size.width),
        ),
      ],
      title: const Row(
        children: [
          ButtonImage(
            url: '/',
            imageUrl:
                'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/logo.png',
          ),
          ButtonAppBar(lable: 'Projects'),
          //ButtonAppBar(lable: 'About'),
        ],
      ),
      floating: true,
      snap: true,
    );
  }
}

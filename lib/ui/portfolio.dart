import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/about_page.dart';
import 'package:portfolio/ui/pages/my_home_page.dart';
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
  final delegate = MyRouterDelegate(pages: [
    MyPage(
      builder: (data) => MyHomePage(
        title: 'Hello',
      ),
      path: '/',
    ),
    MyPage(builder: ((data) => ProjectsPage()), path: '/portfolio'),
    MyPage(builder: ((data) => AboutPage()), path: '/about'),
  ]);

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: delegate,
      routeInformationParser: MyRouteInformationParser(),
      theme:
          currentTheme.isDarkTheme() ? AppTheme.darkTheme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

class MyPage {
  final String path;
  final Widget Function(Map<String, String> data) builder;

  MyPage({required this.builder, required this.path});
}

// Define las paginasI
class MyRouterDelegate extends RouterDelegate<Uri>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final List<MyPage> pages;

  late List<Page> _navigatorPages;

  MyRouterDelegate({required this.pages}) {
    final initialPage = pages.firstWhere(
      (element) => element.path == '/',
    );
    _navigatorPages = [
      MaterialPage(
        name: '/',
        child: initialPage.builder(
          {},
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        onPopPage: (route, result) {
          if (route.didPop(result)) {
            _navigatorPages.removeWhere((element) => element.name == route.settings.name);
            notifyListeners();
            return true;
          }
          return false;
        },
        pages: _navigatorPages);
  }

  @override
  Future<void> setNewRoutePath(Uri configuration) async {
    final path = configuration.path;
    final data = <String, String>{};

    final index = pages.indexWhere(
      (element) {
        if (element.path == path) {
          return true;
        }

        if (element.path.contains('/:')) {
          final lastIndex = element.path.lastIndexOf('/:');
          final substring = element.path.substring(
            0,
            lastIndex,
          );
          if (path.startsWith(substring)) {
            final key =
                element.path.substring(lastIndex + 1, element.path.length);
            final value = path.substring(lastIndex + 1, path.length);
            data[key] = value;
            return true;
          }
        }
        return false;
      },
    );
    if (index != -1 && _navigatorPages.last.name != path) {
      print(pages[index].builder);
      _navigatorPages = [
        ..._navigatorPages,
        MaterialPage(
          name: path,
          child: pages[index].builder(
            data,
          ),
        ),
      ];

      notifyListeners();
    }
  }
  @override
  // TODO: implement currentConfiguration
  Uri? get currentConfiguration => Uri.parse(_navigatorPages.last.name ?? '');

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}

// Extrae las URL o los DeepLinks
class MyRouteInformationParser extends RouteInformationParser<Uri> {
  @override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) {
    return Future.value(Uri.parse(routeInformation.location ?? ''));
  }
  @override
  RouteInformation? restoreRouteInformation(Uri configuration) {
    // TODO: implement restoreRouteInformation
    return RouteInformation(location: configuration.toString());
  }

  
}

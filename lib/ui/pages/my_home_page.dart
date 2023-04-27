import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/app_bar/button_app_bar.dart';
import 'package:portfolio/ui/widget/app_bar/portfolioAppBar.dart';
import 'package:portfolio/ui/widget/home_banner/home_banner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioAppBar(),
      body: ListView(
        children: [
          const HomeBanner(),
          const SizedBox(
            height: 10,
          ),
          Image.network(
              'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/home-banner.png'),
          const SizedBox(
            height: 10,
          ),
          Image.network(
              'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/home-banner.png')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
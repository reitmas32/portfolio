import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/portfolioAppBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PortfolioAppBar(),
      body: Center(
        child: Text('Hello')
      ),
    );
  }
}
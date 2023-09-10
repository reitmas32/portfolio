import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/content/content.dart';
import 'package:portfolio/ui/widget/home_body/home_body.dart';
import 'package:portfolio/ui/widget/mouse_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  bool isFullScroll = false;

  @override
  void initState() {
    super.initState();

    // Agrega un listener al controlador de scroll
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // El scroll ha llegado al final
        setState(() {
          isFullScroll = true;
        });
      } else {
        setState(() {
          isFullScroll = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseDecoration(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0),
          child: ListView(
            controller: _scrollController,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              const HomeBody(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3 - 80,
              ),
              Content(isFullScroll: isFullScroll)
            ],
          ),
        ),
      ),
    );
  }
}

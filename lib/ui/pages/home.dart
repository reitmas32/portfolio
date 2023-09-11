import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/content/content.dart';
import 'package:portfolio/ui/widget/fotter/fotter.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: size.width <= 700 ? const Drawer() : null,
      appBar: size.width <= 700 ? AppBar() : null,
      body: MouseDecoration(
        size: MediaQuery.of(context).size,
        child: ListView(
          controller: _scrollController,
          children: [
            SizedBox(
              height: size.width > 700
                  ? MediaQuery.of(context).size.height / 4
                  : MediaQuery.of(context).size.height / 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width > 700 ? 200 : 30,
              ),
              child: HomeBody(
                scrollController: _scrollController,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3 - 80,
            ),
            if (size.width > 700)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width > 700 ? 200 : 30,
                ),
                child: Content(
                  isFullScroll: isFullScroll,
                  scrollController: _scrollController,
                ),
              ),
            if (size.width < 700)
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: Content.elements,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

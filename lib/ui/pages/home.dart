import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const PortfolioAppBar(),
      ),
      body: MouseDecoration(
        size: MediaQuery.of(context).size,
        child: ListView(
          controller: _scrollController,
          children: [
            SizedBox(
              height: size.width > 700
                  ? MediaQuery.of(context).size.height / 6
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

class PortfolioAppBar extends StatelessWidget {
  const PortfolioAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.only(right: 100),
        child: LangButton(),
      ),
    );
  }
}

class LangButton extends ConsumerWidget {
  const LangButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLang = ref.watch(langProvider);
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.network(
              LangsSupported.langs_images[currentLang]!,
              height: 40,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const SelectLangDialog();
              },
            );
          },
        ),
      ),
    );
  }
}

class SelectLangDialog extends StatelessWidget {
  const SelectLangDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableLangButton(
              lang: LangsSupported.ENGLISH,
            ),
            SelectableLangButton(
              lang: LangsSupported.SPANISH,
            ),
          ],
        ),
      ),
    );
  }
}

class SelectableLangButton extends ConsumerWidget {
  const SelectableLangButton({
    super.key,
    required this.lang,
  });

  final String lang;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.network(
              LangsSupported.langs_images[lang]!,
              height: 40,
            ),
          ),
          Text(lang)
        ],
      ),
      onTap: () {
        ref.read(langProvider.notifier).setLang(lang);
        Navigator.pop(context);
      },
    );
  }
}

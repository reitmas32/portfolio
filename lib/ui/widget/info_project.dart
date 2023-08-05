import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio/domain/models/project.dart';
// ignore: depend_on_referenced_packages
import 'package:markdown/markdown.dart' as md;
import 'package:portfolio/ui/providers/theme_provider.dart';
import 'package:portfolio/ui/style/markdown_style_sheet.dart';
import 'package:provider/provider.dart';

class InfoProject extends StatelessWidget {
  const InfoProject({
    super.key,
    required this.size,
    required this.project,
  });

  final Size size;
  final Project project;

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(
        horizontal: size.width > 720 ? size.width / 7 : size.width / 15,
      ),
      child: Markdown(
        data: project.content,
        selectable: true,
        builders: {
          'h6': CustomHeadingBuilder(currentTheme: currentTheme),
        },
        styleSheet: markdownStyleSheet(context, size),
      ),
    );
  }
}

class CustomHeadingBuilder extends MarkdownElementBuilder {
  CustomHeadingBuilder({required this.currentTheme});

  final ThemeProvider currentTheme;

  @override
  Widget? visitText(md.Text text, TextStyle? preferredStyle) {
    String data = text.text.replaceAll('<\br>', '\n');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: currentTheme.isDarkTheme()
              ? const Color.fromARGB(255, 81, 82, 83)
              : const Color.fromARGB(255, 163, 165, 167),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: SelectableText(
                data,
                style: preferredStyle?.copyWith(
                  fontSize: 18, // Ajustamos el tamaño de fuente
                  color: currentTheme.isDarkTheme()
                      ? Colors.white
                      : Colors.black, // Puedes personalizar el estilo del texto
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: ButtonCopy(
                data: data,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonCopy extends StatefulWidget {
  const ButtonCopy({
    super.key,
    required this.data,
  });

  final String data;

  @override
  State<ButtonCopy> createState() => _ButtonCopyState();
}

class _ButtonCopyState extends State<ButtonCopy> {
  Color _color = Colors.white;
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    _color = currentTheme.isDarkTheme() ? Colors.white : Colors.black;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _color = currentTheme.isDarkTheme() ? Colors.white : Colors.black;
          _isHovering = false;
        });
      },
      child: InkWell(
        // ignore: avoid_print
        onTap: () {
          Clipboard.setData(ClipboardData(text: widget.data));
          const snackBar = SnackBar(
            content: Text('Text copied to clipboard'),
            backgroundColor: Colors.blue,
            duration: Duration(
              milliseconds: 300,
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform:
              _isHovering ? Matrix4.identity().scaled(1.5) : Matrix4.identity(),
          child: Icon(
            Icons.copy,
            size: 15.0,
            color: _color,
          ),
        ),
      ),
    );
  }
}

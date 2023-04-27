import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonImage extends StatelessWidget {
  const ButtonImage({
    super.key,
    required this.url,
    this.external = false,
    required this.imageUrl,
  });

  final String url;
  final bool external;
  final String imageUrl;

  Future<void> _externalLaunchUrl() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: external ? _externalLaunchUrl : (){
        context.go(url);
      },
      hoverColor: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.network(
            imageUrl,
            height: 40.0,
          ),
        ),
      ),
    );
  }
}

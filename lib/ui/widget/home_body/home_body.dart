import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/home_banner/home_banner.dart';
import 'package:portfolio/ui/widget/home_body/about_info.dart';
import 'package:portfolio/ui/widget/home_body/selected_work.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeBanner(),
        const SizedBox(
          height: 400,
        ),
        Row(children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              //height: 300,
              child: const SelectedWork(),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              //height: 300,
              child: const AboutInfo(),
            ),
          ),
        ]),
      ],
    );
  }
}


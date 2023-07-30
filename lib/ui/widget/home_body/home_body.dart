import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/home_banner/home_banner.dart';
import 'package:portfolio/ui/widget/home_body/about_info.dart';
import 'package:portfolio/ui/widget/home_body/selected_work.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  Widget getSection(double width) {
    if (width > 1200) {
      return Padding(
        padding: const EdgeInsets.all(100.0),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: SizedBox(
                width: width / 2,
                //height: 300,
                child: const SelectedWork(),
              ),
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                width: width / 2,
                //height: 300,
                child: const AboutInfo(),
              ),
            ),
          ],
        ),
      );
    }
    return Column(
      children: [
        SizedBox(
          width: width / 1.4,
          child: const SelectedWork(),
        ),
        SizedBox(
          width: width / 1.4,
          //height: 300,
          child: const AboutInfo(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeBanner(),
        //SizedBox(
        //  height: MediaQuery.of(context).size.width > 1200 ? 200 : 50,
        //),
        getSection(MediaQuery.of(context).size.width),
      ],
    );
  }
}

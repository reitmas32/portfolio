import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/home_banner/hobby_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  Widget getHobbies(double width) {
    if (width > 750) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HobbyButton(
            lable: '👩‍💻 Developer',
            backgroundColor: Colors.purple,
          ),
          HobbyButton(
            lable: '🎮 Gamer',
            backgroundColor: Colors.red,
          ),
          HobbyButton(
            lable: '✏️ Writer',
            backgroundColor: Colors.blue,
          ),
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/home-banner.png',
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 30,
              top: MediaQuery.of(context).size.width / 5),
          // ignore: sized_box_for_whitespace
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The personal site of',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 35, 35, 35),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 50),
                ),
                Text(
                  'Rafael Zamora',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 35, 35, 35),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 20),
                ),
                getHobbies(MediaQuery.of(context).size.width)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

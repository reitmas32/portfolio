import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/home_banner/hobby_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  Widget getHobbies(double width) {
    return const Wrap(
      //mainAxisAlignment: MainAxisAlignment.start,
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: size.width > 1100
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The personal site of',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 50),
                    ),
                    Text(
                      'Rafael Zamora',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 20),
                    ),
                    getHobbies(MediaQuery.of(context).size.width)
                  ],
                ),
                Image.asset(
                  'assets/programing.gif',
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The personal site of',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 30),
                    ),
                    Text(
                      'Rafael Zamora',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 10),
                    ),
                    getHobbies(MediaQuery.of(context).size.width)
                  ],
                ),
              ],
            ),
    );
  }
}

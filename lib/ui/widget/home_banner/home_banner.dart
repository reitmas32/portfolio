import 'package:flutter/material.dart';
import 'package:portfolio/ui/widget/home_banner/hobby_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/home-banner.png',
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 10,
              top: MediaQuery.of(context).size.width / 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                Text(
                  'Rafael Zamora',
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 35, 35),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 20),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      HobbyButton(lable: 'Write', backgroundColor: Colors.blue,),
                      HobbyButton(lable: 'Gamer', backgroundColor: Colors.red,),
                      HobbyButton(lable: 'Cine', backgroundColor: Colors.purple,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
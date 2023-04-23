import 'package:flutter/material.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget{
  const PortfolioAppBar({
    super.key,
  });

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 43, 39, 39),
      title: Row(
        children: [
          InkWell(
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/logo.png',
                height: 40.0,
              ),
            ),
            onTap: (){
              print('Menu');
            },
            hoverColor: Color.fromARGB(255, 59, 58, 58),
          ),
          TextButton(
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            // ignore: avoid_print
            onPressed: () => print('Hello'),
          ),
          Text('hola'),
        ],
      ),
      toolbarHeight: MediaQuery.of(context).size.height / 12,
      //toolbarHeight: MediaQuery.of(context).size.height / 12,
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100.0);
}

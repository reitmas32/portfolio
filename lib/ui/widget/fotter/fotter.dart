import 'package:flutter/material.dart';

class Fotter extends StatelessWidget {
  const Fotter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('© 2023 Rafa Zamora'),
            SizedBox(height: 25,),
            Text('🚀 BUILT BY FLUTTER'),
          ],
        ),
      ),
    );
  }
}
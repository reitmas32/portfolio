import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar({
    super.key,
    required this.lable,
  });

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        hoverColor: Theme.of(context).colorScheme.secondary,
        // ignore: avoid_print
        onTap: () {
          context.go('/${lable.toLowerCase()}');
          
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            lable,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
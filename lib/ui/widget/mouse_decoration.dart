import 'package:flutter/material.dart';

class MouseDecoration extends StatefulWidget {
  const MouseDecoration({super.key, required this.child, required this.size});

  final Size size;

  @override
  _MouseDecorationState createState() => _MouseDecorationState();

  final Widget child;
}

class _MouseDecorationState extends State<MouseDecoration> {
  double _x = 0.0;
  double _y = 0.0;

  @override
  void initState() {
    _x = widget.size.width / 2;
    _y = widget.size.height / 2;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _x = event.localPosition.dx;
          _y = event.localPosition.dy;
        });
      },
      child: Stack(
        children: [
          Positioned(
            left: _x - 500, // Ajusta el offset del círculo
            top: _y - 500, // Ajusta el offset del círculo
            child: Container(
              width: 1000,
              height: 1000,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(21, 144, 139, 139),
                    Colors.transparent,
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          widget.child,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.lightGreen.withOpacity(0.2),
                  BlendMode.modulate,
                ),
                image: const NetworkImage(
                    "https://t3.ftcdn.net/jpg/05/25/17/90/360_F_525179047_pg8bOmLS5NxT5LtU8Zd1tEbCclI76Xtf.jpg"))),
        child: Stack(
          fit: StackFit.expand,
          children: [Image.asset("assets/404.png")],
        ),
      ),
    );
  }
}

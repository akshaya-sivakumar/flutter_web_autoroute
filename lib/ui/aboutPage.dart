import 'package:flutter/material.dart';

import 'navigatorRail.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigatorRailwidget(
      selectedindex: 1,
      child: Center(
        child: Text("AboutPage"),
      ),
    );
  }
}

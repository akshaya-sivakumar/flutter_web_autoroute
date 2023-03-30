import 'package:flutter/material.dart';

import 'navigatorRail.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigatorRailwidget(
      selectedindex: 2,
      child: Center(
        child: Text("ProfilePage"),
      ),
    );
  }
}

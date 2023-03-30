import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web_autoroute/main.dart';
import 'package:flutter_web_autoroute/ui/aboutPage.dart';
import 'package:flutter_web_autoroute/ui/homePage.dart';
import 'package:flutter_web_autoroute/ui/not_found.dart';
import 'package:flutter_web_autoroute/ui/profile_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  

  @override
  Widget build(BuildContext context) {
    if (context.routeData.queryParams.get("index") == null) {
      appRoute.pushNamed("/navigatorrail?index=0");
    }
    return (context.routeData.queryParams.get("index") == "0")
        ? const Homepage()
        : context.routeData.queryParams.get("index") == "1"
            ? const AboutPage()
            : context.routeData.queryParams.get("index") == "2"
                ? const ProfilePage()
                : const NotFound();
  }
}

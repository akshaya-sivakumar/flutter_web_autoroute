import 'package:flutter/material.dart';
import 'package:flutter_web_autoroute/router.dart';
import 'package:flutter_web_autoroute/router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool storeinlocal = false;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
final appRoute = AppRouter(authGuard: AuthGuard());
void main() async {
  //setUrlStrategy(PathUrlStrategy());
  SharedPreferences pref = await SharedPreferences.getInstance();
  storeinlocal = pref.getBool("storedatainlocal") ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationRailTheme: NavigationRailThemeData(
          labelType: NavigationRailLabelType.none,
          backgroundColor: Colors.green[900],
          selectedIconTheme: const IconThemeData(color: Colors.red),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedLabelTextStyle: const TextStyle(color: Colors.red),
          unselectedLabelTextStyle: const TextStyle(color: Colors.white),
          elevation: 4,
        ),
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRoute.delegate(),
      routeInformationParser: appRoute.defaultRouteParser(),

      /*    home: (Utils().getData()?["name"] != null)
          ? const NavigatorRailwidget()
          : const LoginPage(), */
    );
  }
}

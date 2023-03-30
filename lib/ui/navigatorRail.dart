import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class NavigatorRailwidget extends StatefulWidget {
  final Widget child;
  final int selectedindex;
  const NavigatorRailwidget(
      {super.key, required this.child, required this.selectedindex});

  @override
  State<NavigatorRailwidget> createState() => _NavigatorRailwidgetState();
}

class _NavigatorRailwidgetState extends State<NavigatorRailwidget> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return constraints.maxWidth > 730
          ? Scaffold(
              body: Row(
                children: <Widget>[
                  NavigationRail(
                    selectedIndex: widget.selectedindex,
                    groupAlignment: groupAligment,
                    onDestinationSelected: (int index) {
                      appRoute.pushNamed('/navigatorrail?index=$index');
                    },
                    labelType: labelType,
                    leading: showLeading
                        ? FloatingActionButton(
                            elevation: 0,
                            onPressed: () {},
                            child: const Icon(Icons.add),
                          )
                        : const SizedBox(),
                    trailing: showTrailing
                        ? IconButton(
                            onPressed: () {
                              // Add your onPressed code here!
                            },
                            icon: const Icon(Icons.more_horiz_rounded),
                          )
                        : const SizedBox(),
                    destinations: const <NavigationRailDestination>[
                      NavigationRailDestination(
                        icon: Icon(
                          Icons.list,
                          size: 40,
                        ),
                        selectedIcon: Icon(
                          Icons.list,
                          size: 40,
                        ),
                        label: Text(
                          "Watchlist",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      NavigationRailDestination(
                        icon: Icon(
                          Icons.bookmark_border,
                          size: 40,
                        ),
                        selectedIcon: Icon(
                          Icons.bookmark_border,
                          size: 40,
                        ),
                        label: Text(
                          'About',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      NavigationRailDestination(
                        icon: Icon(
                          Icons.account_circle,
                          size: 40,
                        ),
                        selectedIcon: Icon(
                          Icons.account_circle,
                          size: 40,
                        ),
                        label: Text(
                          'Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(thickness: 1, width: 1),
                  // This is the main content.
                  Expanded(
                    child: widget.child,
                  ),
                ],
              ),
            )
          : Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                unselectedIconTheme: const IconThemeData(color: Colors.white),
                selectedIconTheme: const IconThemeData(color: Colors.red),
                unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
                selectedItemColor: Colors.red,
                showUnselectedLabels: false,
                selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.red),
                backgroundColor: Colors.green[900],
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                      size: 40,
                    ),
                    label: "Watchlist",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 40,
                    ),
                    label: 'About',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle,
                      size: 40,
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: widget.selectedindex,
                onTap: (index) {
                  context.go('/navigatorRail?tab=$index');
                },
              ),
              body: widget.child);
    });
  }

/*   Widget childWidget() {
    switch (_selectedIndex) {
      case 0:
        return const Homepage();
      case 1:
        return const AboutPage();

      default:
        return RotatedBox(
            quarterTurns: 1,
            child: Text(
              "Page not found",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 60),
            ));
    }
  } */
}

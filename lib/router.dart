import 'package:auto_route/auto_route.dart';
import 'package:flutter_web_autoroute/router.gr.dart';
import 'package:flutter_web_autoroute/ui/dashboard.dart';
import 'package:flutter_web_autoroute/ui/login_page.dart';
import 'package:flutter_web_autoroute/ui/not_found.dart';
import 'package:flutter_web_autoroute/ui/symbol_detail.dart';
import 'package:flutter_web_autoroute/ui/utils.dart';

@AdaptiveAutoRouter(
  deferredLoading: true,
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    //AutoRoute(page: Dashboard, path: "/dashboard"),

    AutoRoute(
        path: "/symbol-detail", page: SymbolDetail, name: "symbolDetailRoute"),
    CustomRoute(
      path: '/navigatorrail',
      page: Dashboard,
      name: "DashboardRoute",
      guards: [AuthGuard],
      children: [],
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(
      path: "*",
      page: NotFound,
      name: "NotfoundRoute",
    ),
  ],
)
class $AppRouter {}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //Utils().getfromCrypto()?["name"] != null ? state.location : '/login'

    if (Utils().getfromCrypto()?["name"] != null) {
      resolver.next(true);
    } else {
      print("note");
      router.push(const LoginRoute());
    }
  }
}

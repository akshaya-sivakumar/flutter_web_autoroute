// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/src/widgets/framework.dart' as _i8;

import 'router.dart' as _i7;
import 'ui/dashboard.dart' deferred as _i3;
import 'ui/login_page.dart' deferred as _i1;
import 'ui/not_found.dart' deferred as _i4;
import 'ui/symbol_detail.dart' deferred as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter({
    _i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.LoginPage(),
        ),
      );
    },
    SymbolDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SymbolDetailRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.SymbolDetail(
            key: args.key,
            state: args.state,
          ),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.Dashboard(),
        ),
        transitionsBuilder: _i5.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NotfoundRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.NotFound(),
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/',
          deferredLoading: true,
        ),
        _i5.RouteConfig(
          SymbolDetailRoute.name,
          path: '/symbol-detail',
          deferredLoading: true,
        ),
        _i5.RouteConfig(
          DashboardRoute.name,
          path: '/navigatorrail',
          deferredLoading: true,
          guards: [authGuard],
        ),
        _i5.RouteConfig(
          NotfoundRoute.name,
          path: '*',
          deferredLoading: true,
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SymbolDetail]
class SymbolDetailRoute extends _i5.PageRouteInfo<SymbolDetailRouteArgs> {
  SymbolDetailRoute({
    _i8.Key? key,
    required String state,
  }) : super(
          SymbolDetailRoute.name,
          path: '/symbol-detail',
          args: SymbolDetailRouteArgs(
            key: key,
            state: state,
          ),
        );

  static const String name = 'SymbolDetailRoute';
}

class SymbolDetailRouteArgs {
  const SymbolDetailRouteArgs({
    this.key,
    required this.state,
  });

  final _i8.Key? key;

  final String state;

  @override
  String toString() {
    return 'SymbolDetailRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i3.Dashboard]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: '/navigatorrail',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.NotFound]
class NotfoundRoute extends _i5.PageRouteInfo<void> {
  const NotfoundRoute()
      : super(
          NotfoundRoute.name,
          path: '*',
        );

  static const String name = 'NotfoundRoute';
}

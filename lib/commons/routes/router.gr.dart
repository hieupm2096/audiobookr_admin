// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../../features/book/pages/book_details_page.dart' as _i7;
import '../../features/book/pages/book_page.dart' as _i6;
import '../../features/dashboard/pages/dashboard_page.dart' as _i2;
import '../../features/fiction/pages/fiction_page.dart' as _i5;
import '../../features/home/pages/home_page.dart' as _i1;
import '../../features/music/pages/music_page.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    DashboardRouter.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.DashboardPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    BookRouter.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.EmptyRouterPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    MusicRouter.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.MusicPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    FictionRouter.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.FictionPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    BookRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.BookPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    },
    BookDetailsRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.BookDetailsPage(),
          transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 0,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/', children: [
          _i3.RouteConfig(DashboardRouter.name,
              path: 'dashboard', parent: HomeRoute.name),
          _i3.RouteConfig(BookRouter.name,
              path: 'book',
              parent: HomeRoute.name,
              children: [
                _i3.RouteConfig(BookRoute.name,
                    path: '', parent: BookRouter.name),
                _i3.RouteConfig(BookDetailsRoute.name,
                    path: 'create', parent: BookRouter.name)
              ]),
          _i3.RouteConfig(MusicRouter.name,
              path: 'music', parent: HomeRoute.name),
          _i3.RouteConfig(FictionRouter.name,
              path: 'fiction', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.DashboardPage]
class DashboardRouter extends _i3.PageRouteInfo<void> {
  const DashboardRouter() : super(name, path: 'dashboard');

  static const String name = 'DashboardRouter';
}

/// generated route for [_i3.EmptyRouterPage]
class BookRouter extends _i3.PageRouteInfo<void> {
  const BookRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'book', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for [_i4.MusicPage]
class MusicRouter extends _i3.PageRouteInfo<void> {
  const MusicRouter() : super(name, path: 'music');

  static const String name = 'MusicRouter';
}

/// generated route for [_i5.FictionPage]
class FictionRouter extends _i3.PageRouteInfo<void> {
  const FictionRouter() : super(name, path: 'fiction');

  static const String name = 'FictionRouter';
}

/// generated route for [_i6.BookPage]
class BookRoute extends _i3.PageRouteInfo<void> {
  const BookRoute() : super(name, path: '');

  static const String name = 'BookRoute';
}

/// generated route for [_i7.BookDetailsPage]
class BookDetailsRoute extends _i3.PageRouteInfo<void> {
  const BookDetailsRoute() : super(name, path: 'create');

  static const String name = 'BookDetailsRoute';
}

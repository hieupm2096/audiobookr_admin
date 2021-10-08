// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/book/pages/book_page.dart' as _i3;
import '../../features/dashboard/pages/dashboard_page.dart' as _i2;
import '../../features/fiction/pages/fiction_page.dart' as _i5;
import '../../features/home/pages/home_page.dart' as _i1;
import '../../features/music/pages/music_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardPage());
    },
    BookRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BookPage());
    },
    MusicRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MusicPage());
    },
    FictionRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FictionPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/', children: [
          _i6.RouteConfig('#redirect',
              path: '', redirectTo: 'book', fullMatch: true),
          _i6.RouteConfig(DashboardRoute.name, path: 'dashboard'),
          _i6.RouteConfig(BookRoute.name, path: 'book'),
          _i6.RouteConfig(MusicRoute.name, path: 'music'),
          _i6.RouteConfig(FictionRoute.name, path: 'fiction')
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i3.BookPage]
class BookRoute extends _i6.PageRouteInfo<void> {
  const BookRoute() : super(name, path: 'book');

  static const String name = 'BookRoute';
}

/// generated route for [_i4.MusicPage]
class MusicRoute extends _i6.PageRouteInfo<void> {
  const MusicRoute() : super(name, path: 'music');

  static const String name = 'MusicRoute';
}

/// generated route for [_i5.FictionPage]
class FictionRoute extends _i6.PageRouteInfo<void> {
  const FictionRoute() : super(name, path: 'fiction');

  static const String name = 'FictionRoute';
}

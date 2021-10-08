import 'package:audiobookr_admin/features/book/pages/book_page.dart';
import 'package:audiobookr_admin/features/dashboard/pages/dashboard_page.dart';
import 'package:audiobookr_admin/features/fiction/pages/fiction_page.dart';
import 'package:audiobookr_admin/features/music/pages/music_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:audiobookr_admin/features/home/pages/home_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(path: 'dashboard', page: DashboardPage),
        AutoRoute(path: 'book', page: BookPage, initial: true),
        AutoRoute(path: 'music', page: MusicPage),
        AutoRoute(path: 'fiction', page: FictionPage),
      ],
      initial: true,
    ),
  ],
)
class $AppRouter {}

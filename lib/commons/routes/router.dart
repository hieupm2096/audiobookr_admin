import 'package:audiobookr_admin/features/book/pages/book_page.dart';
import 'package:audiobookr_admin/features/book/pages/book_details_page.dart';
import 'package:audiobookr_admin/features/dashboard/pages/dashboard_page.dart';
import 'package:audiobookr_admin/features/fiction/pages/fiction_page.dart';
import 'package:audiobookr_admin/features/music/pages/music_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:audiobookr_admin/features/home/pages/home_page.dart';
import 'package:auto_route/annotations.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  durationInMilliseconds: 0,
  reverseDurationInMilliseconds: 10,
  transitionsBuilder: TransitionsBuilders.fadeIn,
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'dashboard',
          name: 'DashboardRouter',
          page: DashboardPage,
        ),
        AutoRoute(
          path: 'book',
          name: 'BookRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: BookPage,
            ),
            AutoRoute(
              path: 'create',
              page: BookDetailsPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'music',
          name: 'MusicRouter',
          page: MusicPage,
        ),
        AutoRoute(
          path: 'fiction',
          name: 'FictionRouter',
          page: FictionPage,
        ),
      ],
      initial: true,
    ),
  ],
)
class $AppRouter {}

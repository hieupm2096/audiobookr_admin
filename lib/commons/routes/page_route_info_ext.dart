import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

extension PageRouteInfoExt on PageRouteInfo {
  String get label {
    switch (routeName) {
      case HomeRoute.name:
        return 'Home';
      case DashboardRoute.name:
        return 'Dashboard';
      case BooksRoute.name:
        return 'Book';
      case CreateBookRoute.name:
        return 'Add new book';
      case MusicRoute.name:
        return 'Music';
      case FictionRoute.name:
        return 'Fiction';
      default:
        return 'Unknown';
    }
  }
}

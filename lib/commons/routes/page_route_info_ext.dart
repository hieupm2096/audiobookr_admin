import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

extension PageRouteInfoExt on PageRouteInfo {
  String get label {
    switch (routeName) {
      case HomeRoute.name:
        return 'Home';
      case DashboardRouter.name:
        return 'Dashboard';
      case BookRouter.name:
        return 'Book';
      case BookDetailsRoute.name:
        return 'Add new book';
      case MusicRouter.name:
        return 'Music';
      case FictionRouter.name:
        return 'Fiction';
      default:
        return 'Unknown';
    }
  }
}

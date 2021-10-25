import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:audiobookr_admin/commons/routes/page_route_info_ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final PageRouteInfo selection;
  final Function(PageRouteInfo route) onTap;

  const SideMenu({
    Key? key,
    required this.selection,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const dashboardRoute = DashboardRoute();
    const booksRoute = BooksRoute();
    const musicRoute = MusicRoute();
    const fictionRoute = FictionRoute();

    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: [
          DrawerHeader(
            child: Assets.images.logo.image(),
          ),
          DrawerListTile(
            title: dashboardRoute.label,
            leading: Assets.icons.menu.menuDashboard.svg(
              height: 16,
              color: selection.routeName == DashboardRoute.name
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection.routeName == DashboardRoute.name,
            onTap: () => onTap(dashboardRoute),
          ),
          DrawerListTile(
            title: booksRoute.label,
            leading: Assets.icons.menu.menuTran.svg(
              height: 16,
              color: selection.routeName == BooksRoute.name
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection.routeName == BooksRoute.name,
            onTap: () => onTap(booksRoute),
          ),
          DrawerListTile(
            title: musicRoute.label,
            leading: Assets.icons.menu.menuTask.svg(
              height: 16,
              color: selection.routeName == MusicRoute.name
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection.routeName == MusicRoute.name,
            onTap: () => onTap(musicRoute),
          ),
          DrawerListTile(
            title: fictionRoute.label,
            leading: Assets.icons.menu.menuDoc.svg(
              height: 16,
              color: selection.routeName == FictionRoute.name
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection.routeName == FictionRoute.name,
            onTap: () => onTap(fictionRoute),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Function()? onTap;
  final bool selected;

  const DrawerListTile({
    Key? key,
    required this.title,
    this.leading,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: leading,
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.white30,
        ),
      ),
      selected: selected,
    );
  }
}

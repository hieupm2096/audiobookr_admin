import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:audiobookr_admin/commons/routes/page_route_info_ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final List<PageRouteInfo> tabRoutes;
  final int selectedIndex;
  final Function(int index) onTap;

  const SideMenu({
    Key? key,
    required this.tabRoutes,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Column(
        children: [
          DrawerHeader(child: Assets.images.logo.image()),
          Expanded(
            child: ListView.builder(
              itemCount: tabRoutes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final route = tabRoutes[index];
                final isSelected = index == selectedIndex;
                return DrawerListTile(
                  title: route.label,
                  leading: route.getIcon(isSelected),
                  selected: isSelected,
                  onTap: () => onTap(index),
                );
              },
            ),
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

extension PageRouteInfoSideMenu on PageRouteInfo {
  Widget getIcon(bool isSelected) {
    switch (routeName) {
      case DashboardRouter.name:
        return Assets.icons.menu.menuDashboard.svg(
          height: 16,
          color: isSelected ? Colors.white : Colors.white30,
        );
      case BookRouter.name:
        return Assets.icons.menu.menuTran.svg(
          height: 16,
          color: isSelected ? Colors.white : Colors.white30,
        );
      case MusicRouter.name:
        return Assets.icons.menu.menuTask.svg(
          height: 16,
          color: isSelected ? Colors.white : Colors.white30,
        );
      case FictionRouter.name:
        return Assets.icons.menu.menuDoc.svg(
          height: 16,
          color: isSelected ? Colors.white : Colors.white30,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:flutter/material.dart';

enum SideMenuSelection { dashboard, book, music, fiction }

extension SideMenuSelectionExt on SideMenuSelection {
  String get label {
    switch (this) {
      case SideMenuSelection.dashboard:
        return 'Dashboard';
      case SideMenuSelection.book:
        return 'Book';
      case SideMenuSelection.music:
        return 'Music';
      case SideMenuSelection.fiction:
        return 'Fiction';
    }
  }
}

class SideMenu extends StatelessWidget {
  final SideMenuSelection selection;
  final Function(SideMenuSelection selection) onTap;

  const SideMenu({
    Key? key,
    required this.selection,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: [
          DrawerHeader(
            child: Assets.images.logo.image(),
          ),
          DrawerListTile(
            title: SideMenuSelection.dashboard.label,
            leading: Assets.icons.menu.menuDashboard.svg(
              height: 16,
              color: selection == SideMenuSelection.dashboard
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection == SideMenuSelection.dashboard,
            onTap: () => onTap(SideMenuSelection.dashboard),
          ),
          DrawerListTile(
            title: SideMenuSelection.book.label,
            leading: Assets.icons.menu.menuTran.svg(
              height: 16,
              color: selection == SideMenuSelection.book
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection == SideMenuSelection.book,
            onTap: () => onTap(SideMenuSelection.book),
          ),
          DrawerListTile(
            title: SideMenuSelection.music.label,
            leading: Assets.icons.menu.menuTask.svg(
              height: 16,
              color: selection == SideMenuSelection.music
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection == SideMenuSelection.music,
            onTap: () => onTap(SideMenuSelection.music),
          ),
          DrawerListTile(
            title: SideMenuSelection.fiction.label,
            leading: Assets.icons.menu.menuDoc.svg(
              height: 16,
              color: selection == SideMenuSelection.fiction
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: selection == SideMenuSelection.fiction,
            onTap: () => onTap(SideMenuSelection.fiction),
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

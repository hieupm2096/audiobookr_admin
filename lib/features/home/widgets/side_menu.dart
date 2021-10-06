import 'package:audiobookr_admin/gen/assets.gen.dart';
import 'package:flutter/material.dart';

enum SideMenuSelection { dashboard, book, music, fiction }

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  SideMenuSelection _selection = SideMenuSelection.dashboard;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Assets.images.logo.image(),
          ),
          DrawerListTile(
            title: 'Dashboard',
            leading: Assets.icons.menu.menuDashboard.svg(
              height: 16,
              color: _selection == SideMenuSelection.dashboard
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: _selection == SideMenuSelection.dashboard,
            onTap: () {
              setState(() {
                _selection = SideMenuSelection.dashboard;
              });
            },
          ),
          DrawerListTile(
            title: 'Book',
            leading: Assets.icons.menu.menuTran.svg(
              height: 16,
              color: _selection == SideMenuSelection.book
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: _selection == SideMenuSelection.book,
            onTap: () {
              setState(() {
                _selection = SideMenuSelection.book;
              });
            },
          ),
          DrawerListTile(
            title: 'Music',
            leading: Assets.icons.menu.menuTask.svg(
              height: 16,
              color: _selection == SideMenuSelection.music
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: _selection == SideMenuSelection.music,
            onTap: () {
              setState(() {
                _selection = SideMenuSelection.music;
              });
            },
          ),
          DrawerListTile(
            title: 'Fiction',
            leading: Assets.icons.menu.menuDoc.svg(
              height: 16,
              color: _selection == SideMenuSelection.fiction
                  ? Colors.white
                  : Colors.white30,
            ),
            selected: _selection == SideMenuSelection.fiction,
            onTap: () {
              setState(() {
                _selection = SideMenuSelection.fiction;
              });
            },
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

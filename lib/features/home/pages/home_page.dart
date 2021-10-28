import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/features/home/widgets/header.dart';
import 'package:audiobookr_admin/features/home/widgets/side_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

const _tabRoutes = [
  DashboardRouter(),
  BookRouter(),
  MusicRouter(),
  FictionRouter(),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: _tabRoutes,
      builder: (context, child, _) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          drawer: SideMenu(
            tabRoutes: _tabRoutes,
            selectedIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
          ),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // We want this side menu only for large screen
                if (Responsive.isDesktop(context))
                  Expanded(
                    // default flex = 1
                    // and it takes 1/6 part of the screen
                    child: SideMenu(
                      tabRoutes: _tabRoutes,
                      selectedIndex: tabsRouter.activeIndex,
                      onTap: (index) {
                        tabsRouter.setActiveIndex(index);
                      },
                    ),
                  ),
                if (Responsive.isDesktop(context))
                  const VerticalDivider(
                    width: 1,
                    thickness: 1,
                  ),
                Expanded(
                  // It takes 5/6 part of the screen
                  flex: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Header(title: tabsRouter.topRoute.name),
                      ),
                      Expanded(
                        child: child,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

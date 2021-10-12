import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/commons/routes/page_route_info_ext.dart';
import 'package:audiobookr_admin/features/app/cubit/router_cubit.dart';
import 'package:audiobookr_admin/features/home/widgets/header.dart';
import 'package:audiobookr_admin/features/home/widgets/side_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BlocSelector<RouterCubit, RouterState, PageRouteInfo>(
        selector: (state) => state.currentRoute,
        builder: (context, currentRoute) {
          return SideMenu(
            selection: currentRoute,
            onTap: (route) {
              context.read<RouterCubit>().setCurrentRoute(route);
              Navigator.of(context).pop();
            },
          );
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
                child: BlocSelector<RouterCubit, RouterState, PageRouteInfo>(
                  selector: (state) => state.currentRoute,
                  builder: (context, currentRoute) {
                    return SideMenu(
                      selection: currentRoute,
                      onTap: (route) =>
                          context.read<RouterCubit>().setCurrentRoute(route),
                    );
                  },
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Column(
                children: [
                  BlocSelector<RouterCubit, RouterState, PageRouteInfo>(
                    selector: (state) => state.currentRoute,
                    builder: (context, currentRoute) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Header(
                        title: currentRoute.label,
                      ),
                    ),
                  ),
                  Expanded(
                    child:
                        BlocSelector<RouterCubit, RouterState, PageRouteInfo>(
                      selector: (state) => state.currentRoute,
                      builder: (context, currentRoute) {
                        return AutoRouter.declarative(
                          routes: (context) {
                            return [currentRoute];
                          },
                          onNavigate: (routeMatches, isInitial) {
                            context
                                .read<RouterCubit>()
                                .setCurrentRoute(routeMatches.single.toRoute());
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

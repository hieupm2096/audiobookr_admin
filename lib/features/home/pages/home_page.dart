import 'package:audiobookr_admin/commons/responsive/responsive.dart';
import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/features/home/cubit/home_cubit.dart';
import 'package:audiobookr_admin/features/home/widgets/header.dart';
import 'package:audiobookr_admin/features/home/widgets/side_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        drawer: BlocSelector<HomeCubit, HomeState, SideMenuSelection>(
          selector: (state) => state.sideMenuSelection,
          builder: (context, selection) => SideMenu(
            selection: selection,
            onTap: (SideMenuSelection selection) =>
                context.read<HomeCubit>().setSideMenuSelection(selection),
          ),
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
                  child: BlocSelector<HomeCubit, HomeState, SideMenuSelection>(
                      selector: (state) => state.sideMenuSelection,
                      builder: (context, selection) {
                        return SideMenu(
                          selection: selection,
                          onTap: (SideMenuSelection selection) => context
                              .read<HomeCubit>()
                              .setSideMenuSelection(selection),
                        );
                      }),
                ),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: Column(
                  children: [
                    BlocSelector<HomeCubit, HomeState, SideMenuSelection>(
                      selector: (state) => state.sideMenuSelection,
                      builder: (context, selection) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Header(
                          title: selection.label,
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                          BlocSelector<HomeCubit, HomeState, SideMenuSelection>(
                        selector: (state) => state.sideMenuSelection,
                        builder: (context, selection) {
                          return AutoRouter.declarative(
                            routes: (context) {
                              return [
                                if (selection == SideMenuSelection.dashboard)
                                  const DashboardRoute(),
                                if (selection == SideMenuSelection.book)
                                  const BookRoute(),
                                if (selection == SideMenuSelection.music)
                                  const MusicRoute(),
                                if (selection == SideMenuSelection.fiction)
                                  const FictionRoute(),
                              ];
                            },
                            onNavigate: (routeMatches, isInitial) {
                              print(routeMatches);
                              print(isInitial);
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
      ),
    );
  }
}

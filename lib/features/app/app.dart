import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:audiobookr_admin/features/app/bloc/app_bloc.dart';
import 'package:audiobookr_admin/gen/colors.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AudioBookr Admin',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorName.backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: ColorName.illusion,
      ),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppBloc()),
        ],
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Router(
            routerDelegate: AutoRouterDelegate(_appRouter),
            routeInformationParser: _appRouter.defaultRouteParser(),
            routeInformationProvider: _appRouter.routeInfoProvider(),
          ),
        ),
      ),
    );
  }
}

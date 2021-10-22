import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'router_state.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(const RouterState());

  void setCurrentRoute(PageRouteInfo route) {
    emit(state.copyWith(currentRoute: route));
  }
}

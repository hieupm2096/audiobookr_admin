import 'package:audiobookr_admin/commons/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_state.dart';
part 'router_cubit.freezed.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(RouterState.initial());

  void setCurrentRoute(PageRouteInfo route) {
    emit(state.copyWith(currentRoute: route));
  }
}

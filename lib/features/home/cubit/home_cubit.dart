import 'package:audiobookr_admin/features/home/widgets/side_menu.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  void setSideMenuSelection(SideMenuSelection selection) {
    emit(state.copyWith(sideMenuSelection: selection));
  }
}

part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required SideMenuSelection sideMenuSelection,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        sideMenuSelection: SideMenuSelection.book,
      );
}

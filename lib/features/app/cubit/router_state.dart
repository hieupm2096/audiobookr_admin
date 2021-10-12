part of 'router_cubit.dart';

@freezed
class RouterState with _$RouterState {
  const factory RouterState({
    required PageRouteInfo currentRoute,
  }) = _RouterState;

  factory RouterState.initial() => const RouterState(
        currentRoute: DashboardRoute(),
      );
}

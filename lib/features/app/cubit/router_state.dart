part of 'router_cubit.dart';

class RouterState extends Equatable {
  final PageRouteInfo currentRoute;

  const RouterState({
    this.currentRoute = const BooksRoute(),
  });

  @override
  List<Object> get props => [currentRoute];

  @override
  bool? get stringify => true;

  RouterState copyWith({
    PageRouteInfo? currentRoute,
  }) {
    print('copyWith');
    return RouterState(currentRoute: currentRoute ?? this.currentRoute);
  }
}

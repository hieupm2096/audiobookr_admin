// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'router_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouterStateTearOff {
  const _$RouterStateTearOff();

  _RouterState call({required PageRouteInfo<dynamic> currentRoute}) {
    return _RouterState(
      currentRoute: currentRoute,
    );
  }
}

/// @nodoc
const $RouterState = _$RouterStateTearOff();

/// @nodoc
mixin _$RouterState {
  PageRouteInfo<dynamic> get currentRoute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouterStateCopyWith<RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterStateCopyWith<$Res> {
  factory $RouterStateCopyWith(
          RouterState value, $Res Function(RouterState) then) =
      _$RouterStateCopyWithImpl<$Res>;
  $Res call({PageRouteInfo<dynamic> currentRoute});
}

/// @nodoc
class _$RouterStateCopyWithImpl<$Res> implements $RouterStateCopyWith<$Res> {
  _$RouterStateCopyWithImpl(this._value, this._then);

  final RouterState _value;
  // ignore: unused_field
  final $Res Function(RouterState) _then;

  @override
  $Res call({
    Object? currentRoute = freezed,
  }) {
    return _then(_value.copyWith(
      currentRoute: currentRoute == freezed
          ? _value.currentRoute
          : currentRoute // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$RouterStateCopyWith<$Res>
    implements $RouterStateCopyWith<$Res> {
  factory _$RouterStateCopyWith(
          _RouterState value, $Res Function(_RouterState) then) =
      __$RouterStateCopyWithImpl<$Res>;
  @override
  $Res call({PageRouteInfo<dynamic> currentRoute});
}

/// @nodoc
class __$RouterStateCopyWithImpl<$Res> extends _$RouterStateCopyWithImpl<$Res>
    implements _$RouterStateCopyWith<$Res> {
  __$RouterStateCopyWithImpl(
      _RouterState _value, $Res Function(_RouterState) _then)
      : super(_value, (v) => _then(v as _RouterState));

  @override
  _RouterState get _value => super._value as _RouterState;

  @override
  $Res call({
    Object? currentRoute = freezed,
  }) {
    return _then(_RouterState(
      currentRoute: currentRoute == freezed
          ? _value.currentRoute
          : currentRoute // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>,
    ));
  }
}

/// @nodoc

class _$_RouterState implements _RouterState {
  const _$_RouterState({required this.currentRoute});

  @override
  final PageRouteInfo<dynamic> currentRoute;

  @override
  String toString() {
    return 'RouterState(currentRoute: $currentRoute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouterState &&
            (identical(other.currentRoute, currentRoute) ||
                const DeepCollectionEquality()
                    .equals(other.currentRoute, currentRoute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentRoute);

  @JsonKey(ignore: true)
  @override
  _$RouterStateCopyWith<_RouterState> get copyWith =>
      __$RouterStateCopyWithImpl<_RouterState>(this, _$identity);
}

abstract class _RouterState implements RouterState {
  const factory _RouterState({required PageRouteInfo<dynamic> currentRoute}) =
      _$_RouterState;

  @override
  PageRouteInfo<dynamic> get currentRoute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouterStateCopyWith<_RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

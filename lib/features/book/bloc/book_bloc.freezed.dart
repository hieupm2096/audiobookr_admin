// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookEventTearOff {
  const _$BookEventTearOff();

  BooksFetchEvent fetchBooks() {
    return const BooksFetchEvent();
  }
}

/// @nodoc
const $BookEvent = _$BookEventTearOff();

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksFetchEvent value) fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooksFetchEvent value)? fetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksFetchEvent value)? fetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res> implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  final BookEvent _value;
  // ignore: unused_field
  final $Res Function(BookEvent) _then;
}

/// @nodoc
abstract class $BooksFetchEventCopyWith<$Res> {
  factory $BooksFetchEventCopyWith(
          BooksFetchEvent value, $Res Function(BooksFetchEvent) then) =
      _$BooksFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksFetchEventCopyWithImpl<$Res> extends _$BookEventCopyWithImpl<$Res>
    implements $BooksFetchEventCopyWith<$Res> {
  _$BooksFetchEventCopyWithImpl(
      BooksFetchEvent _value, $Res Function(BooksFetchEvent) _then)
      : super(_value, (v) => _then(v as BooksFetchEvent));

  @override
  BooksFetchEvent get _value => super._value as BooksFetchEvent;
}

/// @nodoc

class _$BooksFetchEvent implements BooksFetchEvent {
  const _$BooksFetchEvent();

  @override
  String toString() {
    return 'BookEvent.fetchBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BooksFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
  }) {
    return fetchBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBooks,
  }) {
    return fetchBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksFetchEvent value) fetchBooks,
  }) {
    return fetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooksFetchEvent value)? fetchBooks,
  }) {
    return fetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksFetchEvent value)? fetchBooks,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks(this);
    }
    return orElse();
  }
}

abstract class BooksFetchEvent implements BookEvent {
  const factory BooksFetchEvent() = _$BooksFetchEvent;
}

/// @nodoc
class _$BookStateTearOff {
  const _$BookStateTearOff();

  _BookState call({required bool loading, List<Book>? books, String? error}) {
    return _BookState(
      loading: loading,
      books: books,
      error: error,
    );
  }
}

/// @nodoc
const $BookState = _$BookStateTearOff();

/// @nodoc
mixin _$BookState {
  bool get loading => throw _privateConstructorUsedError;
  List<Book>? get books => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<Book>? books, String? error});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? books = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(
          _BookState value, $Res Function(_BookState) then) =
      __$BookStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<Book>? books, String? error});
}

/// @nodoc
class __$BookStateCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(_BookState _value, $Res Function(_BookState) _then)
      : super(_value, (v) => _then(v as _BookState));

  @override
  _BookState get _value => super._value as _BookState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? books = freezed,
    Object? error = freezed,
  }) {
    return _then(_BookState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookState implements _BookState {
  const _$_BookState({required this.loading, this.books, this.error});

  @override
  final bool loading;
  @override
  final List<Book>? books;
  @override
  final String? error;

  @override
  String toString() {
    return 'BookState(loading: $loading, books: $books, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.books, books) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(books), error);

  @JsonKey(ignore: true)
  @override
  _$BookStateCopyWith<_BookState> get copyWith =>
      __$BookStateCopyWithImpl<_BookState>(this, _$identity);
}

abstract class _BookState implements BookState {
  const factory _BookState(
      {required bool loading, List<Book>? books, String? error}) = _$_BookState;

  @override
  bool get loading;
  @override
  List<Book>? get books;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$BookStateCopyWith<_BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

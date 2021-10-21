part of 'book_bloc.dart';

@immutable
@freezed
class BookState with _$BookState {
  const factory BookState({
    required bool loading,
    List<Book>? books,
    String? error,
  }) = _BookState;

  factory BookState.initial() => const BookState(loading: false);

  factory BookState.loading() => const BookState(loading: true);

  factory BookState.success(List<Book> books) => BookState(
        loading: false,
        books: books,
      );

  factory BookState.failure(String message) => BookState(
        loading: false,
        error: message,
      );
}

part of 'book_bloc.dart';

@freezed
@immutable
class BookEvent with _$BookEvent {
  const factory BookEvent.fetchBooks() = BooksFetchEvent;
}

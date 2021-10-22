part of 'book_bloc.dart';

abstract class BookState extends Equatable {
  const BookState();
}

class BookInitial extends BookState {
  @override
  List<Object> get props => [];
}

class BookLoading extends BookState {
  @override
  List<Object> get props => [];
}

class BooksLoaded extends BookState {
  final List<Book> books;

  const BooksLoaded(this.books);

  @override
  List<Object> get props => [books];
}

class BookLoaded extends BookState {
  final Book book;

  const BookLoaded(this.book);

  @override
  List<Object> get props => [book];

  @override
  bool? get stringify => true;
}

class BookFailure extends BookState {
  final String message;

  const BookFailure(this.message);

  @override
  List<Object> get props => [message];

  @override
  bool? get stringify => true;
}

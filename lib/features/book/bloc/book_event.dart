part of 'book_bloc.dart';

abstract class BookEvent extends Equatable {
  const BookEvent();

  @override
  List<Object> get props => [];
}

class BooksFetchEvent extends BookEvent {
  const BooksFetchEvent() : super();
}

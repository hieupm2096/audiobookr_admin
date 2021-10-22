import 'dart:async';

import 'package:audiobookr_admin/commons/models/book/book.dart';
import 'package:audiobookr_admin/features/book/repos/book_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_event.dart';

part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final IBookRepository bookRepository;

  BookBloc(this.bookRepository) : super(BookInitial()) {
    on<BooksFetchEvent>(_onBookFetchEvent);
  }

  Future<void> _onBookFetchEvent(
      BooksFetchEvent event, Emitter<BookState> emit) async {
    emit(BookLoading());

    var result = await bookRepository.getBooks();

    result.when(
      success: (books) => emit(BooksLoaded(books)),
      failure: (failure) => emit(BookFailure(failure.message ?? '')),
    );
  }
}

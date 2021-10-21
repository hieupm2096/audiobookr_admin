import 'package:audiobookr_admin/commons/models/book/book.dart';
import 'package:audiobookr_admin/features/book/repos/book_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_event.dart';

part 'book_state.dart';

part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final IBookRepository bookRepository;

  BookBloc(this.bookRepository) : super(BookState.initial()) {
    on<BooksFetchEvent>(_onBooksFetchEvent);
  }

  Future<void> _onBooksFetchEvent(
      BooksFetchEvent event, Emitter<BookState> emit) async {
    emit(state.copyWith(loading: true));

    var result = await bookRepository.getBooks();

    result.when(
      success: (books) {
        emit(BookState.success(books));
      },
      failure: (failure) {
        emit(BookState.failure(failure.message ?? ''));
      },
    );
  }
}

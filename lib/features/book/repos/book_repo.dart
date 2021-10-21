import 'package:audiobookr_admin/commons/api/client/book_client.dart';
import 'package:audiobookr_admin/commons/api/interceptor/app_interceptor.dart';
import 'package:audiobookr_admin/commons/models/failures/failures.dart';
import 'package:audiobookr_admin/commons/models/result/result.dart';
import 'package:audiobookr_admin/commons/models/book/book.dart';

abstract class IBookRepository {
  Future<Result<List<Book>, Failure>> getBooks();
}

class BookRepository extends IBookRepository {
  final BookClient client;

  BookRepository(this.client);

  @override
  Future<Result<List<Book>, Failure>> getBooks() async {
    try {
      var response = await client.getBooks(null);
      var books = response.books;
      if (books != null) {
        return Result.success(books);
      }
      return Result.failure(InternalServerFailure(message: response.message));
    } on UnauthorizedException {
      return Result.failure(UnauthorizedFailure());
    } on NoInternetConnectionException {
      return const Result.failure(NoInternetConnectionFailure());
    }
  }
}

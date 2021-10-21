import 'package:audiobookr_admin/features/book/models/book_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'book_client.g.dart';

@RestApi()
abstract class BookClient {
  factory BookClient(
    Dio dio, {
    String baseUrl,
  }) = _BookClient;

  @GET('/api/v1/book')
  Future<BookListResponse> getBooks(@Query('subCatId') String? subCatId);
}

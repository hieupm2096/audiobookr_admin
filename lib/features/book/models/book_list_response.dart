import 'package:audiobookr_admin/commons/models/book/book.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_list_response.g.dart';

@JsonSerializable()
class BookListResponse {
  @JsonKey(name: 'data')
  List<Book>? books;

  late String message;

  BookListResponse();

  factory BookListResponse.fromJson(Map<String, dynamic> json) =>
      _$BookListResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book(
    String id,
    String name,
    // SubCat
    String? description,
    String? featureImage,
    String? coverImage,
    String? listenUrl,
    int? likeCount,
    int? listenCount,
    int? viewCount,
    DateTime? createdDate,
    DateTime? updatedDate,
    int? status,
  ) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

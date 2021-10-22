import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  final String id;
  final String name;

  // SubCat
  final String? description;
  final String? featureImage;
  final String? coverImage;
  final String? listenUrl;
  final int? likeCount;
  final int? listenCount;
  final int? viewCount;
  final DateTime? createdDate;
  final DateTime? updatedDate;
  final int? status;

  const Book({
    required this.id,
    required this.name,
    this.description,
    this.featureImage,
    this.coverImage,
    this.listenUrl,
    this.likeCount,
    this.listenCount,
    this.viewCount,
    this.createdDate,
    this.updatedDate,
    this.status,
  });

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  @override
  List<Object> get props => [
        id,
        name,
        description ?? '',
        featureImage ?? '',
        coverImage ?? '',
        listenUrl ?? '',
        likeCount ?? 0,
        listenCount ?? 0,
        viewCount ?? 0,
        createdDate ?? DateTime.now(),
        updatedDate ?? DateTime.now(),
        status ?? 1,
      ];

  @override
  bool? get stringify => true;
}

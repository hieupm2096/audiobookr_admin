// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookListResponse _$BookListResponseFromJson(Map<String, dynamic> json) =>
    BookListResponse()
      ..books = (json['data'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList()
      ..message = json['message'] as String;

Map<String, dynamic> _$BookListResponseToJson(BookListResponse instance) =>
    <String, dynamic>{
      'data': instance.books,
      'message': instance.message,
    };

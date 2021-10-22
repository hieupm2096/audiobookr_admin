// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      featureImage: json['featureImage'] as String?,
      coverImage: json['coverImage'] as String?,
      listenUrl: json['listenUrl'] as String?,
      likeCount: json['likeCount'] as int?,
      listenCount: json['listenCount'] as int?,
      viewCount: json['viewCount'] as int?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'featureImage': instance.featureImage,
      'coverImage': instance.coverImage,
      'listenUrl': instance.listenUrl,
      'likeCount': instance.likeCount,
      'listenCount': instance.listenCount,
      'viewCount': instance.viewCount,
      'createdDate': instance.createdDate?.toIso8601String(),
      'updatedDate': instance.updatedDate?.toIso8601String(),
      'status': instance.status,
    };

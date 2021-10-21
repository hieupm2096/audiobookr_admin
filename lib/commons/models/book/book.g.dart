// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      json['id'] as String,
      json['name'] as String,
      json['description'] as String?,
      json['featureImage'] as String?,
      json['coverImage'] as String?,
      json['listenUrl'] as String?,
      json['likeCount'] as int?,
      json['listenCount'] as int?,
      json['viewCount'] as int?,
      json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      json['updatedDate'] == null
          ? null
          : DateTime.parse(json['updatedDate'] as String),
      json['status'] as int?,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
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

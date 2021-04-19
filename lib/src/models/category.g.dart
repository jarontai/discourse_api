// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    id: json['id'] as int,
    name: json['name'] as String,
    color: json['color'] as String,
    slug: json['slug'] as String,
    topicCount: json['topicCount'] as int,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'slug': instance.slug,
      'topicCount': instance.topicCount,
      'description': instance.description,
    };

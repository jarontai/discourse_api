// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAction _$_$_UserActionFromJson(Map<String, dynamic> json) {
  return _$_UserAction(
    userId: json['user_id'] as int,
    username: json['username'] as String,
    categoryId: json['category_id'] as int,
    topicId: json['topic_id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    slug: json['slug'] as String,
    title: json['title'] as String,
    excerpt: json['excerpt'] as String,
  );
}

Map<String, dynamic> _$_$_UserActionToJson(_$_UserAction instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'category_id': instance.categoryId,
      'topic_id': instance.topicId,
      'created_at': instance.createdAt.toIso8601String(),
      'slug': instance.slug,
      'title': instance.title,
      'excerpt': instance.excerpt,
    };

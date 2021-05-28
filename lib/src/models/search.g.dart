// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchPost _$_$_SearchPostFromJson(Map<String, dynamic> json) {
  return _$_SearchPost(
    id: json['id'] as int,
    topicId: json['topic_id'] as int,
    avatarTemplate: json['avatar_template'] as String,
    name: json['name'] as String,
    username: json['username'] as String,
    createdAt: json['created_at'] as String,
    blurb: json['blurb'] as String,
  );
}

Map<String, dynamic> _$_$_SearchPostToJson(_$_SearchPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic_id': instance.topicId,
      'avatar_template': instance.avatarTemplate,
      'name': instance.name,
      'username': instance.username,
      'created_at': instance.createdAt,
      'blurb': instance.blurb,
    };

_$_SearchTopic _$_$_SearchTopicFromJson(Map<String, dynamic> json) {
  return _$_SearchTopic(
    id: json['id'] as int,
    title: json['title'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_SearchTopicToJson(_$_SearchTopic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'created_at': instance.createdAt,
    };

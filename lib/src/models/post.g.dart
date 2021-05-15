// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$_$_PostFromJson(Map<String, dynamic> json) {
  return _$_Post(
    id: json['id'] as int,
    name: json['name'] as String,
    username: json['username'] as String,
    cooked: json['cooked'] as String,
    avatarTemplate: json['avatar_template'] as String,
    postNumber: json['post_number'] as int,
    postType: json['post_type'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    replyCount: json['reply_count'] as int,
    topicId: json['topic_id'] as int,
    topicSlug: json['topic_slug'] as String,
  );
}

Map<String, dynamic> _$_$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'cooked': instance.cooked,
      'avatar_template': instance.avatarTemplate,
      'post_number': instance.postNumber,
      'post_type': instance.postType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'reply_count': instance.replyCount,
      'topic_id': instance.topicId,
      'topic_slug': instance.topicSlug,
    };

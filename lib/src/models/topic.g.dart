// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Topic _$_$_TopicFromJson(Map<String, dynamic> json) {
  return _$_Topic(
    id: json['id'] as int,
    title: json['title'] as String,
    postsCount: json['posts_count'] as int,
    createdAt: json['created_at'] as String,
    views: json['views'] as int,
    replyCount: json['reply_count'] as int,
    likeCount: json['like_count'] as int,
    lastPostedAt: json['last_posted_at'] as String,
    visible: json['visible'] as bool,
    closed: json['closed'] as bool,
    archived: json['archived'] as bool,
    slug: json['slug'] as String,
    pinnedGlobally: json['pinned_globally'] as bool,
    pinned: json['pinned'] as bool,
  );
}

Map<String, dynamic> _$_$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'posts_count': instance.postsCount,
      'created_at': instance.createdAt,
      'views': instance.views,
      'reply_count': instance.replyCount,
      'like_count': instance.likeCount,
      'last_posted_at': instance.lastPostedAt,
      'visible': instance.visible,
      'closed': instance.closed,
      'archived': instance.archived,
      'slug': instance.slug,
      'pinned_globally': instance.pinnedGlobally,
      'pinned': instance.pinned,
    };

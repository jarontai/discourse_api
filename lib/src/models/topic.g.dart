// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Topic _$_$_TopicFromJson(Map<String, dynamic> json) {
  return _$_Topic(
    id: json['id'] as int,
    title: json['title'] as String,
    postsCount: json['postsCount'] as int,
    createdAt: json['createdAt'] as String,
    views: json['views'] as int,
    replyCount: json['replyCount'] as int,
    likeCount: json['likeCount'] as int,
    lastPostedAt: json['lastPostedAt'] as String,
    visible: json['visible'] as bool,
    closed: json['closed'] as bool,
    archived: json['archived'] as bool,
    slug: json['slug'] as String,
    pinnedGlobally: json['pinnedGlobally'] as bool,
    pinned: json['pinned'] as bool,
  );
}

Map<String, dynamic> _$_$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'postsCount': instance.postsCount,
      'createdAt': instance.createdAt,
      'views': instance.views,
      'replyCount': instance.replyCount,
      'likeCount': instance.likeCount,
      'lastPostedAt': instance.lastPostedAt,
      'visible': instance.visible,
      'closed': instance.closed,
      'archived': instance.archived,
      'slug': instance.slug,
      'pinnedGlobally': instance.pinnedGlobally,
      'pinned': instance.pinned,
    };

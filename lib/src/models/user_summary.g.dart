// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSummary _$_$_UserSummaryFromJson(Map<String, dynamic> json) {
  return _$_UserSummary(
    daysVisited: json['days_visited'] as int,
    likesGiven: json['likes_given'] as int,
    likesReceived: json['likes_received'] as int,
    postCount: json['post_count'] as int,
    postsReadCount: json['posts_read_count'] as int,
    timeRead: json['time_read'] as int,
    topicCount: json['topic_count'] as int,
    topicsEntered: json['topics_entered'] as int,
  );
}

Map<String, dynamic> _$_$_UserSummaryToJson(_$_UserSummary instance) =>
    <String, dynamic>{
      'days_visited': instance.daysVisited,
      'likes_given': instance.likesGiven,
      'likes_received': instance.likesReceived,
      'post_count': instance.postCount,
      'posts_read_count': instance.postsReadCount,
      'time_read': instance.timeRead,
      'topic_count': instance.topicCount,
      'topics_entered': instance.topicsEntered,
    };

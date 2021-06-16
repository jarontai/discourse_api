// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationData _$_$_NotificationDataFromJson(Map<String, dynamic> json) {
  return _$_NotificationData(
    badgeName: json['badge_name'] as String?,
    displayUsername: json['display_username'] as String?,
    topicTitle: json['topic_title'] as String?,
    inboxCount: json['inbox_count'] as int?,
  );
}

Map<String, dynamic> _$_$_NotificationDataToJson(
        _$_NotificationData instance) =>
    <String, dynamic>{
      'badge_name': instance.badgeName,
      'display_username': instance.displayUsername,
      'topic_title': instance.topicTitle,
      'inbox_count': instance.inboxCount,
    };

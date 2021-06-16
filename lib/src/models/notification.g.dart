// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$_$_NotificationFromJson(Map<String, dynamic> json) {
  return _$_Notification(
    id: json['id'] as int,
    userId: json['user_id'] as int,
    createdAt: json['created_at'] as String,
    notificationType: json['notification_type'] as int,
    read: json['read'] as bool,
    topicId: json['topic_id'] as int?,
  );
}

Map<String, dynamic> _$_$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'notification_type': instance.notificationType,
      'read': instance.read,
      'topic_id': instance.topicId,
    };

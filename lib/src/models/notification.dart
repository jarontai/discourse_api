import 'package:freezed_annotation/freezed_annotation.dart';

import './notification_data.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  factory Notification({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'notification_type') required int notificationType,
    required bool read,
    @JsonKey(name: 'topic_id') int? topicId,
    @JsonKey(ignore: true) NotificationType? type,
    @JsonKey(ignore: true) NotificationData? data,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Notification._(); // Added constructor
}

enum NotificationType {
  Mentioned, // 1
  Replied, // 2
  Quoted, // 3
  Edited, // 4
  Liked, // 5
  PrivateMessage, // 6
  Posted, // 9
  MovePosted, // 10
  Linked, // 11
  GrantedBadge, // 12
  GroupMessageSummary, // 16
  PostApproved, // 20
  Unknown
}

extension NotificationTypeValue on NotificationType {
  int get value {
    switch (this) {
      case NotificationType.Mentioned:
        return 1;
      case NotificationType.Replied:
        return 2;
      case NotificationType.Quoted:
        return 3;
      case NotificationType.Edited:
        return 4;
      case NotificationType.Liked:
        return 5;
      case NotificationType.PrivateMessage:
        return 6;
      case NotificationType.Posted:
        return 9;
      case NotificationType.MovePosted:
        return 10;
      case NotificationType.Linked:
        return 11;
      case NotificationType.GrantedBadge:
        return 12;
      case NotificationType.GroupMessageSummary:
        return 16;
      case NotificationType.PostApproved:
        return 20;

      case NotificationType.Unknown:
        return -1;
    }
  }

  static NotificationType from(int value) {
    switch (value) {
      case 1:
        return NotificationType.Mentioned;

      case 2:
        return NotificationType.Replied;

      case 3:
        return NotificationType.Quoted;

      case 4:
        return NotificationType.Edited;

      case 5:
        return NotificationType.Liked;

      case 6:
        return NotificationType.PrivateMessage;

      case 9:
        return NotificationType.Posted;

      case 10:
        return NotificationType.MovePosted;

      case 11:
        return NotificationType.Linked;

      case 12:
        return NotificationType.GrantedBadge;

      case 16:
        return NotificationType.GroupMessageSummary;

      case 20:
        return NotificationType.PostApproved;

      default:
        return NotificationType.Unknown;
    }
  }
}

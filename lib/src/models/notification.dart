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
  Badge, // 12
  Modify, // 4
  Audit, // 1
  Mail, // 16
  Reply, // 2
  Like, // 5
  Unknown
}

extension NotificationTypeValue on NotificationType {
  int get value {
    switch (this) {
      case NotificationType.Badge:
        return 12;
      case NotificationType.Modify:
        return 4;
      case NotificationType.Audit:
        return 1;
      case NotificationType.Mail:
        return 16;
      case NotificationType.Reply:
        return 2;
      case NotificationType.Like:
        return 5;

      case NotificationType.Unknown:
        return -1;
    }
  }

  static NotificationType from(int value) {
    switch (value) {
      case 12:
        return NotificationType.Badge;
      case 4:
        return NotificationType.Modify;

      case 1:
        return NotificationType.Audit;

      case 16:
        return NotificationType.Mail;

      case 2:
        return NotificationType.Reply;

      case 5:
        return NotificationType.Like;

      default:
        return NotificationType.Unknown;
    }
  }
}

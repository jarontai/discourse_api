import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data.freezed.dart';
part 'notification_data.g.dart';

@freezed
class NotificationData with _$NotificationData {
  factory NotificationData({
    @JsonKey(name: 'badge_name') String? badgeName,
    @JsonKey(name: 'display_username') String? displayUsername,
    @JsonKey(name: 'topic_title') String? topicTitle,
    @JsonKey(name: 'inbox_count') int? inboxCount,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);

  NotificationData._(); // Added constructor
}

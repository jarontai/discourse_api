import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_summary.freezed.dart';
part 'user_summary.g.dart';

@freezed
class UserSummary with _$UserSummary {
  factory UserSummary({
    @JsonKey(name: 'days_visited') required int daysVisited,
    @JsonKey(name: 'likes_given') required int likesGiven,
    @JsonKey(name: 'likes_received') required int likesReceived,
    @JsonKey(name: 'post_count') required int postCount,
    @JsonKey(name: 'posts_read_count') required int postsReadCount,
    @JsonKey(name: 'time_read') required int timeRead,
    @JsonKey(name: 'topic_count') required int topicCount,
    @JsonKey(name: 'topics_entered') required int topicsEntered,
  }) = _UserSummary;

  UserSummary._(); // Added constructor

  factory UserSummary.fromJson(Map<String, dynamic> json) =>
      _$UserSummaryFromJson(json);
}

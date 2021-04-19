import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  factory Topic({
    required int id,
    required String title,
    required int postsCount,
    required String createdAt,
    required int views,
    required int replyCount,
    required int likeCount,
    required String lastPostedAt,
    required bool visible,
    required bool closed,
    required bool archived,
    required String slug,
    required bool pinnedGlobally,
    required bool pinned,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  factory Topic({
    required int id,
    required String title,
    @JsonKey(name: 'posts_count') required int postsCount,
    @JsonKey(name: 'created_at') required String createdAt,
    required int views,
    @JsonKey(name: 'reply_count') required int replyCount,
    @JsonKey(name: 'like_count') required int likeCount,
    @JsonKey(name: 'last_posted_at') required String lastPostedAt,
    required bool visible,
    required bool closed,
    required bool archived,
    required String slug,
    @JsonKey(name: 'pinned_globally') required bool pinnedGlobally,
    required bool pinned,
    @JsonKey(ignore: true) List<Post>? posts,
    @JsonKey(ignore: true) List<int>? postIds,
    @JsonKey(ignore: true) Map<String, dynamic>? rawJson,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

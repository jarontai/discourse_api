import 'package:freezed_annotation/freezed_annotation.dart';

import 'post.dart';
import 'user.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  factory Topic({
    required int id,
    required String title,
    @JsonKey(name: 'posts_count') required int postsCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required int views,
    @JsonKey(name: 'reply_count') required int replyCount,
    @JsonKey(name: 'like_count') required int likeCount,
    required bool visible,
    required bool closed,
    required bool archived,
    @JsonKey(name: 'pinned_globally') required bool pinnedGlobally,
    required bool pinned,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(ignore: true) DateTime? lastPostedAt,
    @JsonKey(ignore: true) String? categorySlug,
    @JsonKey(ignore: true) String? excerpt,
    @JsonKey(ignore: true) List<User>? users,
    @JsonKey(ignore: true) List<int>? posterIds,
    @JsonKey(ignore: true) User? poster,
    @JsonKey(ignore: true) List<Post>? posts,
    @JsonKey(ignore: true) List<int>? postIds,
    @JsonKey(ignore: true) Map<String, dynamic>? rawJson,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

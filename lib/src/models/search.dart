import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

class SearchResult {
  final SearchPost post;
  final SearchTopic topic;

  SearchResult({
    required this.post,
    required this.topic,
  });
}

@freezed
class SearchPost with _$SearchPost {
  factory SearchPost({
    required final int id,
    @JsonKey(name: 'topic_id') required final int topicId,
    @JsonKey(name: 'avatar_template') required final String avatarTemplate,
    required final String name,
    required final String username,
    @JsonKey(name: 'created_at') required final String createdAt,
    required final String blurb,
    @JsonKey(ignore: true) String? avatar,
  }) = _SearchPost;

  factory SearchPost.fromJson(Map<String, dynamic> json) =>
      _$SearchPostFromJson(json);
}

@freezed
class SearchTopic with _$SearchTopic {
  factory SearchTopic({
    required final int id,
    required final String title,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _SearchTopic;

  factory SearchTopic.fromJson(Map<String, dynamic> json) =>
      _$SearchTopicFromJson(json);
}

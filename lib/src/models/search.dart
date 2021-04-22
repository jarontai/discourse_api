import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

class SearchResult {
  final List<SearchPost> posts;
  final List<SearchTopic> topics;

  SearchResult({
    required this.posts,
    required this.topics,
  });
}

@freezed
class SearchPost with _$SearchPost {
  factory SearchPost({
    required final int id,
    required final String name,
    @JsonKey(name: 'created_at') required final String createdAt,
    required final String blurb,
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

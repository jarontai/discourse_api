import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required int id,
    required String name,
    required String username,
    required String cooked,
    @JsonKey(name: 'avatar_template') required String avatarTemplate,
    @JsonKey(ignore: true) String? avatar,
    @JsonKey(ignore: true) String? markdown,
    @JsonKey(name: 'post_number') required int postNumber,
    @JsonKey(name: 'post_type') required int postType,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'reply_count') required int replyCount,
    @JsonKey(name: 'topic_id') required int topicId,
    @JsonKey(name: 'topic_slug') required String topicSlug,
    @JsonKey(ignore: true) Map<String, dynamic>? rawJson,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Post._(); // Added constructor
}

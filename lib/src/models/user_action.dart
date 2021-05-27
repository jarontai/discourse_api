import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_action.freezed.dart';
part 'user_action.g.dart';

@freezed
class UserAction with _$UserAction {
  factory UserAction({
    @JsonKey(name: 'user_id') required int userId,
    required String username,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'topic_id') required int topicId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String slug,
    required String title,
    required String excerpt,
  }) = _UserAction;

  factory UserAction.fromJson(Map<String, dynamic> json) =>
      _$UserActionFromJson(json);
}

import 'package:discourse_api/discourse_api.dart';
import 'package:discourse_api/src/models/user_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String username,
    required String name,
    @JsonKey(name: 'avatar_template') required String avatarTemplate,
    @JsonKey(ignore: true) String? createdAt,
    @JsonKey(ignore: true) bool? moderator,
    @JsonKey(ignore: true) String? bio,
    @JsonKey(ignore: true) String? avatar,
    @JsonKey(ignore: true) UserSummary? summary,
    @JsonKey(ignore: true) List<UserAction>? recentActions,
  }) = _User;

  User._(); // Added constructor

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

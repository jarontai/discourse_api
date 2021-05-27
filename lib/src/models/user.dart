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
    @JsonKey(ignore: true) String? avatar,
    // @JsonKey(name: 'badge_count') required int badgeCount,
    // @JsonKey(name: 'bio_excerpt') required String bioExcerpt,
    // @JsonKey(name: 'trust_level') required int trustLevel,
    // @JsonKey(name: 'card_background_upload_url') required String cardBackgroundUploadUrl,
    // required bool moderator,
    // required bool admin,
  }) = _User;

  User._(); // Added constructor

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

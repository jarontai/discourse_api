import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String username,
    required String name,
    required String avatarTemplate,
    required int badgeCount,
    required String bioExcerpt,
    required int trustLevel,
    required String cardBackgroundUploadUrl,
    required bool moderator,
    required bool admin,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

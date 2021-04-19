import 'dart:convert';

class User {
  final int id;
  final String username;
  final String name;
  final String avatarTemplate;
  final int badgeCount;
  final String bioExcerpt;
  final int trustLevel;
  final String cardBackgroundUploadUrl;
  final bool moderator;
  final bool admin;

  User({
    required this.id,
    required this.username,
    required this.name,
    required this.avatarTemplate,
    required this.badgeCount,
    required this.bioExcerpt,
    required this.trustLevel,
    required this.cardBackgroundUploadUrl,
    required this.moderator,
    required this.admin,
  });

  User copyWith({
    int? id,
    String? username,
    String? name,
    String? avatarTemplate,
    String? card,
    int? badgeCount,
    String? bioExcerpt,
    int? trustLevel,
    String? cardBackgroundUploadUrl,
    bool? moderator,
    bool? admin,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      avatarTemplate: avatarTemplate ?? this.avatarTemplate,
      badgeCount: badgeCount ?? this.badgeCount,
      bioExcerpt: bioExcerpt ?? this.bioExcerpt,
      trustLevel: trustLevel ?? this.trustLevel,
      cardBackgroundUploadUrl:
          cardBackgroundUploadUrl ?? this.cardBackgroundUploadUrl,
      moderator: moderator ?? this.moderator,
      admin: admin ?? this.admin,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'avatarTemplate': avatarTemplate,
      'badgeCount': badgeCount,
      'bioExcerpt': bioExcerpt,
      'trustLevel': trustLevel,
      'cardBackgroundUploadUrl': cardBackgroundUploadUrl,
      'moderator': moderator,
      'admin': admin,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      name: map['name'],
      avatarTemplate: map['avatar_template'],
      badgeCount: map['badge_count'],
      bioExcerpt: map['bio_excerpt'],
      trustLevel: map['trust_level'],
      cardBackgroundUploadUrl: map['card_background_upload_url'],
      moderator: map['moderator'],
      admin: map['admin'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, username: $username, name: $name, avatarTemplate: $avatarTemplate, badgeCount: $badgeCount, bioExcerpt: $bioExcerpt, trustLevel: $trustLevel, cardBackgroundUploadUrl: $cardBackgroundUploadUrl, moderator: $moderator, admin: $admin)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.username == username &&
        other.name == name &&
        other.avatarTemplate == avatarTemplate &&
        other.badgeCount == badgeCount &&
        other.bioExcerpt == bioExcerpt &&
        other.trustLevel == trustLevel &&
        other.cardBackgroundUploadUrl == cardBackgroundUploadUrl &&
        other.moderator == moderator &&
        other.admin == admin;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        name.hashCode ^
        avatarTemplate.hashCode ^
        badgeCount.hashCode ^
        bioExcerpt.hashCode ^
        trustLevel.hashCode ^
        cardBackgroundUploadUrl.hashCode ^
        moderator.hashCode ^
        admin.hashCode;
  }
}

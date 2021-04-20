// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    username: json['username'] as String,
    name: json['name'] as String,
    avatarTemplate: json['avatar_template'] as String,
    badgeCount: json['badge_count'] as int,
    bioExcerpt: json['bio_excerpt'] as String,
    trustLevel: json['trust_level'] as int,
    cardBackgroundUploadUrl: json['card_background_upload_url'] as String,
    moderator: json['moderator'] as bool,
    admin: json['admin'] as bool,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'avatar_template': instance.avatarTemplate,
      'badge_count': instance.badgeCount,
      'bio_excerpt': instance.bioExcerpt,
      'trust_level': instance.trustLevel,
      'card_background_upload_url': instance.cardBackgroundUploadUrl,
      'moderator': instance.moderator,
      'admin': instance.admin,
    };

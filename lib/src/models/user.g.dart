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
    avatarTemplate: json['avatarTemplate'] as String,
    badgeCount: json['badgeCount'] as int,
    bioExcerpt: json['bioExcerpt'] as String,
    trustLevel: json['trustLevel'] as int,
    cardBackgroundUploadUrl: json['cardBackgroundUploadUrl'] as String,
    moderator: json['moderator'] as bool,
    admin: json['admin'] as bool,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'avatarTemplate': instance.avatarTemplate,
      'badgeCount': instance.badgeCount,
      'bioExcerpt': instance.bioExcerpt,
      'trustLevel': instance.trustLevel,
      'cardBackgroundUploadUrl': instance.cardBackgroundUploadUrl,
      'moderator': instance.moderator,
      'admin': instance.admin,
    };

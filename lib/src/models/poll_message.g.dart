// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollMessage _$_$_PollMessageFromJson(Map<String, dynamic> json) {
  return _$_PollMessage(
    messageId: json['message_id'] as int,
    channel: json['channel'] as String,
    latestId: json['latestId'] as int? ?? -1,
  );
}

Map<String, dynamic> _$_$_PollMessageToJson(_$_PollMessage instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'channel': instance.channel,
      'latestId': instance.latestId,
    };

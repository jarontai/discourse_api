import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_message.freezed.dart';
part 'poll_message.g.dart';

@freezed
class PollMessage with _$PollMessage {
  factory PollMessage({
    @JsonKey(name: 'message_id') required int messageId,
    required String channel,
    @Default(-1) int latestId,
  }) = _PollMessage;

  factory PollMessage.fromJson(Map<String, dynamic> json) =>
      _$PollMessageFromJson(json);
}

// channel: "/latest"
// data: {
// message_type: "latest"
// payload: {bumped_at: "2021-05-02T07:14:26.762Z", category_id: 6, archetype: "regular", topic_tag_ids: []}
// archetype: "regular"
// bumped_at: "2021-05-02T07:14:26.762Z"
// category_id: 6
// topic_tag_ids: []
// topic_id: 188860}
// global_id: 18837678
// message_id: 32162

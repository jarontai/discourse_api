// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'poll_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollMessage _$PollMessageFromJson(Map<String, dynamic> json) {
  return _PollMessage.fromJson(json);
}

/// @nodoc
class _$PollMessageTearOff {
  const _$PollMessageTearOff();

  _PollMessage call(
      {@JsonKey(name: 'message_id') required int messageId,
      required String channel,
      int latestId = -1}) {
    return _PollMessage(
      messageId: messageId,
      channel: channel,
      latestId: latestId,
    );
  }

  PollMessage fromJson(Map<String, Object> json) {
    return PollMessage.fromJson(json);
  }
}

/// @nodoc
const $PollMessage = _$PollMessageTearOff();

/// @nodoc
mixin _$PollMessage {
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  int get latestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollMessageCopyWith<PollMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollMessageCopyWith<$Res> {
  factory $PollMessageCopyWith(
          PollMessage value, $Res Function(PollMessage) then) =
      _$PollMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      String channel,
      int latestId});
}

/// @nodoc
class _$PollMessageCopyWithImpl<$Res> implements $PollMessageCopyWith<$Res> {
  _$PollMessageCopyWithImpl(this._value, this._then);

  final PollMessage _value;
  // ignore: unused_field
  final $Res Function(PollMessage) _then;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? channel = freezed,
    Object? latestId = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      latestId: latestId == freezed
          ? _value.latestId
          : latestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PollMessageCopyWith<$Res>
    implements $PollMessageCopyWith<$Res> {
  factory _$PollMessageCopyWith(
          _PollMessage value, $Res Function(_PollMessage) then) =
      __$PollMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      String channel,
      int latestId});
}

/// @nodoc
class __$PollMessageCopyWithImpl<$Res> extends _$PollMessageCopyWithImpl<$Res>
    implements _$PollMessageCopyWith<$Res> {
  __$PollMessageCopyWithImpl(
      _PollMessage _value, $Res Function(_PollMessage) _then)
      : super(_value, (v) => _then(v as _PollMessage));

  @override
  _PollMessage get _value => super._value as _PollMessage;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? channel = freezed,
    Object? latestId = freezed,
  }) {
    return _then(_PollMessage(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      latestId: latestId == freezed
          ? _value.latestId
          : latestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PollMessage implements _PollMessage {
  _$_PollMessage(
      {@JsonKey(name: 'message_id') required this.messageId,
      required this.channel,
      this.latestId = -1});

  factory _$_PollMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_PollMessageFromJson(json);

  @override
  @JsonKey(name: 'message_id')
  final int messageId;
  @override
  final String channel;
  @JsonKey(defaultValue: -1)
  @override
  final int latestId;

  @override
  String toString() {
    return 'PollMessage(messageId: $messageId, channel: $channel, latestId: $latestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollMessage &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.latestId, latestId) ||
                const DeepCollectionEquality()
                    .equals(other.latestId, latestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(latestId);

  @JsonKey(ignore: true)
  @override
  _$PollMessageCopyWith<_PollMessage> get copyWith =>
      __$PollMessageCopyWithImpl<_PollMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PollMessageToJson(this);
  }
}

abstract class _PollMessage implements PollMessage {
  factory _PollMessage(
      {@JsonKey(name: 'message_id') required int messageId,
      required String channel,
      int latestId}) = _$_PollMessage;

  factory _PollMessage.fromJson(Map<String, dynamic> json) =
      _$_PollMessage.fromJson;

  @override
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;
  @override
  String get channel => throw _privateConstructorUsedError;
  @override
  int get latestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollMessageCopyWith<_PollMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

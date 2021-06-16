// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
class _$NotificationDataTearOff {
  const _$NotificationDataTearOff();

  _NotificationData call(
      {@JsonKey(name: 'badge_name') String? badgeName,
      @JsonKey(name: 'display_username') String? displayUsername,
      @JsonKey(name: 'topic_title') String? topicTitle,
      @JsonKey(name: 'inbox_count') int? inboxCount}) {
    return _NotificationData(
      badgeName: badgeName,
      displayUsername: displayUsername,
      topicTitle: topicTitle,
      inboxCount: inboxCount,
    );
  }

  NotificationData fromJson(Map<String, Object> json) {
    return NotificationData.fromJson(json);
  }
}

/// @nodoc
const $NotificationData = _$NotificationDataTearOff();

/// @nodoc
mixin _$NotificationData {
  @JsonKey(name: 'badge_name')
  String? get badgeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_username')
  String? get displayUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_title')
  String? get topicTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'inbox_count')
  int? get inboxCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'badge_name') String? badgeName,
      @JsonKey(name: 'display_username') String? displayUsername,
      @JsonKey(name: 'topic_title') String? topicTitle,
      @JsonKey(name: 'inbox_count') int? inboxCount});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  final NotificationData _value;
  // ignore: unused_field
  final $Res Function(NotificationData) _then;

  @override
  $Res call({
    Object? badgeName = freezed,
    Object? displayUsername = freezed,
    Object? topicTitle = freezed,
    Object? inboxCount = freezed,
  }) {
    return _then(_value.copyWith(
      badgeName: badgeName == freezed
          ? _value.badgeName
          : badgeName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayUsername: displayUsername == freezed
          ? _value.displayUsername
          : displayUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      topicTitle: topicTitle == freezed
          ? _value.topicTitle
          : topicTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      inboxCount: inboxCount == freezed
          ? _value.inboxCount
          : inboxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDataCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$NotificationDataCopyWith(
          _NotificationData value, $Res Function(_NotificationData) then) =
      __$NotificationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'badge_name') String? badgeName,
      @JsonKey(name: 'display_username') String? displayUsername,
      @JsonKey(name: 'topic_title') String? topicTitle,
      @JsonKey(name: 'inbox_count') int? inboxCount});
}

/// @nodoc
class __$NotificationDataCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res>
    implements _$NotificationDataCopyWith<$Res> {
  __$NotificationDataCopyWithImpl(
      _NotificationData _value, $Res Function(_NotificationData) _then)
      : super(_value, (v) => _then(v as _NotificationData));

  @override
  _NotificationData get _value => super._value as _NotificationData;

  @override
  $Res call({
    Object? badgeName = freezed,
    Object? displayUsername = freezed,
    Object? topicTitle = freezed,
    Object? inboxCount = freezed,
  }) {
    return _then(_NotificationData(
      badgeName: badgeName == freezed
          ? _value.badgeName
          : badgeName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayUsername: displayUsername == freezed
          ? _value.displayUsername
          : displayUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      topicTitle: topicTitle == freezed
          ? _value.topicTitle
          : topicTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      inboxCount: inboxCount == freezed
          ? _value.inboxCount
          : inboxCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationData extends _NotificationData {
  _$_NotificationData(
      {@JsonKey(name: 'badge_name') this.badgeName,
      @JsonKey(name: 'display_username') this.displayUsername,
      @JsonKey(name: 'topic_title') this.topicTitle,
      @JsonKey(name: 'inbox_count') this.inboxCount})
      : super._();

  factory _$_NotificationData.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationDataFromJson(json);

  @override
  @JsonKey(name: 'badge_name')
  final String? badgeName;
  @override
  @JsonKey(name: 'display_username')
  final String? displayUsername;
  @override
  @JsonKey(name: 'topic_title')
  final String? topicTitle;
  @override
  @JsonKey(name: 'inbox_count')
  final int? inboxCount;

  @override
  String toString() {
    return 'NotificationData(badgeName: $badgeName, displayUsername: $displayUsername, topicTitle: $topicTitle, inboxCount: $inboxCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationData &&
            (identical(other.badgeName, badgeName) ||
                const DeepCollectionEquality()
                    .equals(other.badgeName, badgeName)) &&
            (identical(other.displayUsername, displayUsername) ||
                const DeepCollectionEquality()
                    .equals(other.displayUsername, displayUsername)) &&
            (identical(other.topicTitle, topicTitle) ||
                const DeepCollectionEquality()
                    .equals(other.topicTitle, topicTitle)) &&
            (identical(other.inboxCount, inboxCount) ||
                const DeepCollectionEquality()
                    .equals(other.inboxCount, inboxCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(badgeName) ^
      const DeepCollectionEquality().hash(displayUsername) ^
      const DeepCollectionEquality().hash(topicTitle) ^
      const DeepCollectionEquality().hash(inboxCount);

  @JsonKey(ignore: true)
  @override
  _$NotificationDataCopyWith<_NotificationData> get copyWith =>
      __$NotificationDataCopyWithImpl<_NotificationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDataToJson(this);
  }
}

abstract class _NotificationData extends NotificationData {
  factory _NotificationData(
      {@JsonKey(name: 'badge_name') String? badgeName,
      @JsonKey(name: 'display_username') String? displayUsername,
      @JsonKey(name: 'topic_title') String? topicTitle,
      @JsonKey(name: 'inbox_count') int? inboxCount}) = _$_NotificationData;
  _NotificationData._() : super._();

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$_NotificationData.fromJson;

  @override
  @JsonKey(name: 'badge_name')
  String? get badgeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_username')
  String? get displayUsername => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_title')
  String? get topicTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'inbox_count')
  int? get inboxCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationDataCopyWith<_NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

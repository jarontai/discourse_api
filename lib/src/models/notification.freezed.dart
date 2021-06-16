// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {required int id,
      @JsonKey(name: 'user_id') required int userId,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'notification_type') required int notificationType,
      required bool read,
      @JsonKey(name: 'topic_id') int? topicId,
      @JsonKey(ignore: true) NotificationType? type,
      @JsonKey(ignore: true) NotificationData? data}) {
    return _Notification(
      id: id,
      userId: userId,
      createdAt: createdAt,
      notificationType: notificationType,
      read: read,
      topicId: topicId,
      type: type,
      data: data,
    );
  }

  Notification fromJson(Map<String, Object> json) {
    return Notification.fromJson(json);
  }
}

/// @nodoc
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  int get notificationType => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  int? get topicId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  NotificationType? get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  NotificationData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'notification_type') int notificationType,
      bool read,
      @JsonKey(name: 'topic_id') int? topicId,
      @JsonKey(ignore: true) NotificationType? type,
      @JsonKey(ignore: true) NotificationData? data});

  $NotificationDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? notificationType = freezed,
    Object? read = freezed,
    Object? topicId = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData?,
    ));
  }

  @override
  $NotificationDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotificationDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'notification_type') int notificationType,
      bool read,
      @JsonKey(name: 'topic_id') int? topicId,
      @JsonKey(ignore: true) NotificationType? type,
      @JsonKey(ignore: true) NotificationData? data});

  @override
  $NotificationDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? notificationType = freezed,
    Object? read = freezed,
    Object? topicId = freezed,
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as int,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Notification extends _Notification {
  _$_Notification(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'notification_type') required this.notificationType,
      required this.read,
      @JsonKey(name: 'topic_id') this.topicId,
      @JsonKey(ignore: true) this.type,
      @JsonKey(ignore: true) this.data})
      : super._();

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'notification_type')
  final int notificationType;
  @override
  final bool read;
  @override
  @JsonKey(name: 'topic_id')
  final int? topicId;
  @override
  @JsonKey(ignore: true)
  final NotificationType? type;
  @override
  @JsonKey(ignore: true)
  final NotificationData? data;

  @override
  String toString() {
    return 'Notification(id: $id, userId: $userId, createdAt: $createdAt, notificationType: $notificationType, read: $read, topicId: $topicId, type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notification &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.notificationType, notificationType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationType, notificationType)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(notificationType) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationToJson(this);
  }
}

abstract class _Notification extends Notification {
  factory _Notification(
      {required int id,
      @JsonKey(name: 'user_id') required int userId,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'notification_type') required int notificationType,
      required bool read,
      @JsonKey(name: 'topic_id') int? topicId,
      @JsonKey(ignore: true) NotificationType? type,
      @JsonKey(ignore: true) NotificationData? data}) = _$_Notification;
  _Notification._() : super._();

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notification_type')
  int get notificationType => throw _privateConstructorUsedError;
  @override
  bool get read => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_id')
  int? get topicId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  NotificationType? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  NotificationData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationCopyWith<_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

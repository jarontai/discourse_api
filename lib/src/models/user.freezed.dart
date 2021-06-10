// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int id,
      required String username,
      required String name,
      @JsonKey(name: 'avatar_template') required String avatarTemplate,
      @JsonKey(ignore: true) String? createdAt,
      @JsonKey(ignore: true) bool? moderator,
      @JsonKey(ignore: true) String? bio,
      @JsonKey(ignore: true) String? avatar,
      @JsonKey(ignore: true) UserSummary? summary,
      @JsonKey(ignore: true) List<UserAction>? recentActions}) {
    return _User(
      id: id,
      username: username,
      name: name,
      avatarTemplate: avatarTemplate,
      createdAt: createdAt,
      moderator: moderator,
      bio: bio,
      avatar: avatar,
      summary: summary,
      recentActions: recentActions,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_template')
  String get avatarTemplate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool? get moderator => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  UserSummary? get summary => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<UserAction>? get recentActions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String name,
      @JsonKey(name: 'avatar_template') String avatarTemplate,
      @JsonKey(ignore: true) String? createdAt,
      @JsonKey(ignore: true) bool? moderator,
      @JsonKey(ignore: true) String? bio,
      @JsonKey(ignore: true) String? avatar,
      @JsonKey(ignore: true) UserSummary? summary,
      @JsonKey(ignore: true) List<UserAction>? recentActions});

  $UserSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? avatarTemplate = freezed,
    Object? createdAt = freezed,
    Object? moderator = freezed,
    Object? bio = freezed,
    Object? avatar = freezed,
    Object? summary = freezed,
    Object? recentActions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarTemplate: avatarTemplate == freezed
          ? _value.avatarTemplate
          : avatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      moderator: moderator == freezed
          ? _value.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as UserSummary?,
      recentActions: recentActions == freezed
          ? _value.recentActions
          : recentActions // ignore: cast_nullable_to_non_nullable
              as List<UserAction>?,
    ));
  }

  @override
  $UserSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $UserSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String name,
      @JsonKey(name: 'avatar_template') String avatarTemplate,
      @JsonKey(ignore: true) String? createdAt,
      @JsonKey(ignore: true) bool? moderator,
      @JsonKey(ignore: true) String? bio,
      @JsonKey(ignore: true) String? avatar,
      @JsonKey(ignore: true) UserSummary? summary,
      @JsonKey(ignore: true) List<UserAction>? recentActions});

  @override
  $UserSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? name = freezed,
    Object? avatarTemplate = freezed,
    Object? createdAt = freezed,
    Object? moderator = freezed,
    Object? bio = freezed,
    Object? avatar = freezed,
    Object? summary = freezed,
    Object? recentActions = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarTemplate: avatarTemplate == freezed
          ? _value.avatarTemplate
          : avatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      moderator: moderator == freezed
          ? _value.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as bool?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as UserSummary?,
      recentActions: recentActions == freezed
          ? _value.recentActions
          : recentActions // ignore: cast_nullable_to_non_nullable
              as List<UserAction>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User extends _User {
  _$_User(
      {required this.id,
      required this.username,
      required this.name,
      @JsonKey(name: 'avatar_template') required this.avatarTemplate,
      @JsonKey(ignore: true) this.createdAt,
      @JsonKey(ignore: true) this.moderator,
      @JsonKey(ignore: true) this.bio,
      @JsonKey(ignore: true) this.avatar,
      @JsonKey(ignore: true) this.summary,
      @JsonKey(ignore: true) this.recentActions})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String name;
  @override
  @JsonKey(name: 'avatar_template')
  final String avatarTemplate;
  @override
  @JsonKey(ignore: true)
  final String? createdAt;
  @override
  @JsonKey(ignore: true)
  final bool? moderator;
  @override
  @JsonKey(ignore: true)
  final String? bio;
  @override
  @JsonKey(ignore: true)
  final String? avatar;
  @override
  @JsonKey(ignore: true)
  final UserSummary? summary;
  @override
  @JsonKey(ignore: true)
  final List<UserAction>? recentActions;

  @override
  String toString() {
    return 'User(id: $id, username: $username, name: $name, avatarTemplate: $avatarTemplate, createdAt: $createdAt, moderator: $moderator, bio: $bio, avatar: $avatar, summary: $summary, recentActions: $recentActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatarTemplate, avatarTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.avatarTemplate, avatarTemplate)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.moderator, moderator) ||
                const DeepCollectionEquality()
                    .equals(other.moderator, moderator)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.recentActions, recentActions) ||
                const DeepCollectionEquality()
                    .equals(other.recentActions, recentActions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatarTemplate) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(moderator) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(recentActions);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {required int id,
      required String username,
      required String name,
      @JsonKey(name: 'avatar_template') required String avatarTemplate,
      @JsonKey(ignore: true) String? createdAt,
      @JsonKey(ignore: true) bool? moderator,
      @JsonKey(ignore: true) String? bio,
      @JsonKey(ignore: true) String? avatar,
      @JsonKey(ignore: true) UserSummary? summary,
      @JsonKey(ignore: true) List<UserAction>? recentActions}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_template')
  String get avatarTemplate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  bool? get moderator => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get bio => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  UserSummary? get summary => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<UserAction>? get recentActions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

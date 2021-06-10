// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAction _$UserActionFromJson(Map<String, dynamic> json) {
  return _UserAction.fromJson(json);
}

/// @nodoc
class _$UserActionTearOff {
  const _$UserActionTearOff();

  _UserAction call(
      {@JsonKey(name: 'user_id')
          required int userId,
      required String username,
      @JsonKey(name: 'acting_avatar_template')
          required String actingAvatarTemplate,
      @JsonKey(name: 'action_type')
          required int actionType,
      @JsonKey(name: 'category_id')
          required int categoryId,
      @JsonKey(name: 'topic_id')
          required int topicId,
      @JsonKey(name: 'created_at')
          required DateTime createdAt,
      required String slug,
      required String title,
      required String excerpt,
      @JsonKey(ignore: true)
          String? actingAvatar}) {
    return _UserAction(
      userId: userId,
      username: username,
      actingAvatarTemplate: actingAvatarTemplate,
      actionType: actionType,
      categoryId: categoryId,
      topicId: topicId,
      createdAt: createdAt,
      slug: slug,
      title: title,
      excerpt: excerpt,
      actingAvatar: actingAvatar,
    );
  }

  UserAction fromJson(Map<String, Object> json) {
    return UserAction.fromJson(json);
  }
}

/// @nodoc
const $UserAction = _$UserActionTearOff();

/// @nodoc
mixin _$UserAction {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'acting_avatar_template')
  String get actingAvatarTemplate => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_type')
  int get actionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get actingAvatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserActionCopyWith<UserAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionCopyWith<$Res> {
  factory $UserActionCopyWith(
          UserAction value, $Res Function(UserAction) then) =
      _$UserActionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      String username,
      @JsonKey(name: 'acting_avatar_template') String actingAvatarTemplate,
      @JsonKey(name: 'action_type') int actionType,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String slug,
      String title,
      String excerpt,
      @JsonKey(ignore: true) String? actingAvatar});
}

/// @nodoc
class _$UserActionCopyWithImpl<$Res> implements $UserActionCopyWith<$Res> {
  _$UserActionCopyWithImpl(this._value, this._then);

  final UserAction _value;
  // ignore: unused_field
  final $Res Function(UserAction) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? actingAvatarTemplate = freezed,
    Object? actionType = freezed,
    Object? categoryId = freezed,
    Object? topicId = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? excerpt = freezed,
    Object? actingAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      actingAvatarTemplate: actingAvatarTemplate == freezed
          ? _value.actingAvatarTemplate
          : actingAvatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      actionType: actionType == freezed
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      actingAvatar: actingAvatar == freezed
          ? _value.actingAvatar
          : actingAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserActionCopyWith<$Res> implements $UserActionCopyWith<$Res> {
  factory _$UserActionCopyWith(
          _UserAction value, $Res Function(_UserAction) then) =
      __$UserActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      String username,
      @JsonKey(name: 'acting_avatar_template') String actingAvatarTemplate,
      @JsonKey(name: 'action_type') int actionType,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String slug,
      String title,
      String excerpt,
      @JsonKey(ignore: true) String? actingAvatar});
}

/// @nodoc
class __$UserActionCopyWithImpl<$Res> extends _$UserActionCopyWithImpl<$Res>
    implements _$UserActionCopyWith<$Res> {
  __$UserActionCopyWithImpl(
      _UserAction _value, $Res Function(_UserAction) _then)
      : super(_value, (v) => _then(v as _UserAction));

  @override
  _UserAction get _value => super._value as _UserAction;

  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? actingAvatarTemplate = freezed,
    Object? actionType = freezed,
    Object? categoryId = freezed,
    Object? topicId = freezed,
    Object? createdAt = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? excerpt = freezed,
    Object? actingAvatar = freezed,
  }) {
    return _then(_UserAction(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      actingAvatarTemplate: actingAvatarTemplate == freezed
          ? _value.actingAvatarTemplate
          : actingAvatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      actionType: actionType == freezed
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      actingAvatar: actingAvatar == freezed
          ? _value.actingAvatar
          : actingAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserAction implements _UserAction {
  _$_UserAction(
      {@JsonKey(name: 'user_id')
          required this.userId,
      required this.username,
      @JsonKey(name: 'acting_avatar_template')
          required this.actingAvatarTemplate,
      @JsonKey(name: 'action_type')
          required this.actionType,
      @JsonKey(name: 'category_id')
          required this.categoryId,
      @JsonKey(name: 'topic_id')
          required this.topicId,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      required this.slug,
      required this.title,
      required this.excerpt,
      @JsonKey(ignore: true)
          this.actingAvatar});

  factory _$_UserAction.fromJson(Map<String, dynamic> json) =>
      _$_$_UserActionFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String username;
  @override
  @JsonKey(name: 'acting_avatar_template')
  final String actingAvatarTemplate;
  @override
  @JsonKey(name: 'action_type')
  final int actionType;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'topic_id')
  final int topicId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String slug;
  @override
  final String title;
  @override
  final String excerpt;
  @override
  @JsonKey(ignore: true)
  final String? actingAvatar;

  @override
  String toString() {
    return 'UserAction(userId: $userId, username: $username, actingAvatarTemplate: $actingAvatarTemplate, actionType: $actionType, categoryId: $categoryId, topicId: $topicId, createdAt: $createdAt, slug: $slug, title: $title, excerpt: $excerpt, actingAvatar: $actingAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAction &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.actingAvatarTemplate, actingAvatarTemplate) ||
                const DeepCollectionEquality().equals(
                    other.actingAvatarTemplate, actingAvatarTemplate)) &&
            (identical(other.actionType, actionType) ||
                const DeepCollectionEquality()
                    .equals(other.actionType, actionType)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.excerpt, excerpt) ||
                const DeepCollectionEquality()
                    .equals(other.excerpt, excerpt)) &&
            (identical(other.actingAvatar, actingAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.actingAvatar, actingAvatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(actingAvatarTemplate) ^
      const DeepCollectionEquality().hash(actionType) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(excerpt) ^
      const DeepCollectionEquality().hash(actingAvatar);

  @JsonKey(ignore: true)
  @override
  _$UserActionCopyWith<_UserAction> get copyWith =>
      __$UserActionCopyWithImpl<_UserAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserActionToJson(this);
  }
}

abstract class _UserAction implements UserAction {
  factory _UserAction(
      {@JsonKey(name: 'user_id')
          required int userId,
      required String username,
      @JsonKey(name: 'acting_avatar_template')
          required String actingAvatarTemplate,
      @JsonKey(name: 'action_type')
          required int actionType,
      @JsonKey(name: 'category_id')
          required int categoryId,
      @JsonKey(name: 'topic_id')
          required int topicId,
      @JsonKey(name: 'created_at')
          required DateTime createdAt,
      required String slug,
      required String title,
      required String excerpt,
      @JsonKey(ignore: true)
          String? actingAvatar}) = _$_UserAction;

  factory _UserAction.fromJson(Map<String, dynamic> json) =
      _$_UserAction.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'acting_avatar_template')
  String get actingAvatarTemplate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'action_type')
  int get actionType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get excerpt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get actingAvatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserActionCopyWith<_UserAction> get copyWith =>
      throw _privateConstructorUsedError;
}

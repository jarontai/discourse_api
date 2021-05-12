// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required int id,
      required String name,
      required String username,
      required String cooked,
      @JsonKey(ignore: true) String? markdown,
      @JsonKey(name: 'post_number') required int postNumber,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt,
      @JsonKey(name: 'reply_count') required int replyCount,
      @JsonKey(name: 'topic_id') required int topicId,
      @JsonKey(name: 'topic_slug') required String topicSlug,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson}) {
    return _Post(
      id: id,
      name: name,
      username: username,
      cooked: cooked,
      markdown: markdown,
      postNumber: postNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      replyCount: replyCount,
      topicId: topicId,
      topicSlug: topicSlug,
      rawJson: rawJson,
    );
  }

  Post fromJson(Map<String, Object> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get cooked => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get markdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_number')
  int get postNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_count')
  int get replyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_slug')
  String get topicSlug => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Map<String, dynamic>? get rawJson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String username,
      String cooked,
      @JsonKey(ignore: true) String? markdown,
      @JsonKey(name: 'post_number') int postNumber,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'topic_slug') String topicSlug,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? cooked = freezed,
    Object? markdown = freezed,
    Object? postNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? replyCount = freezed,
    Object? topicId = freezed,
    Object? topicSlug = freezed,
    Object? rawJson = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cooked: cooked == freezed
          ? _value.cooked
          : cooked // ignore: cast_nullable_to_non_nullable
              as String,
      markdown: markdown == freezed
          ? _value.markdown
          : markdown // ignore: cast_nullable_to_non_nullable
              as String?,
      postNumber: postNumber == freezed
          ? _value.postNumber
          : postNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicSlug: topicSlug == freezed
          ? _value.topicSlug
          : topicSlug // ignore: cast_nullable_to_non_nullable
              as String,
      rawJson: rawJson == freezed
          ? _value.rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String username,
      String cooked,
      @JsonKey(ignore: true) String? markdown,
      @JsonKey(name: 'post_number') int postNumber,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'topic_slug') String topicSlug,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? cooked = freezed,
    Object? markdown = freezed,
    Object? postNumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? replyCount = freezed,
    Object? topicId = freezed,
    Object? topicSlug = freezed,
    Object? rawJson = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      cooked: cooked == freezed
          ? _value.cooked
          : cooked // ignore: cast_nullable_to_non_nullable
              as String,
      markdown: markdown == freezed
          ? _value.markdown
          : markdown // ignore: cast_nullable_to_non_nullable
              as String?,
      postNumber: postNumber == freezed
          ? _value.postNumber
          : postNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicSlug: topicSlug == freezed
          ? _value.topicSlug
          : topicSlug // ignore: cast_nullable_to_non_nullable
              as String,
      rawJson: rawJson == freezed
          ? _value.rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Post implements _Post {
  _$_Post(
      {required this.id,
      required this.name,
      required this.username,
      required this.cooked,
      @JsonKey(ignore: true) this.markdown,
      @JsonKey(name: 'post_number') required this.postNumber,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'reply_count') required this.replyCount,
      @JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'topic_slug') required this.topicSlug,
      @JsonKey(ignore: true) this.rawJson});

  factory _$_Post.fromJson(Map<String, dynamic> json) =>
      _$_$_PostFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String cooked;
  @override
  @JsonKey(ignore: true)
  final String? markdown;
  @override
  @JsonKey(name: 'post_number')
  final int postNumber;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'reply_count')
  final int replyCount;
  @override
  @JsonKey(name: 'topic_id')
  final int topicId;
  @override
  @JsonKey(name: 'topic_slug')
  final String topicSlug;
  @override
  @JsonKey(ignore: true)
  final Map<String, dynamic>? rawJson;

  @override
  String toString() {
    return 'Post(id: $id, name: $name, username: $username, cooked: $cooked, markdown: $markdown, postNumber: $postNumber, createdAt: $createdAt, updatedAt: $updatedAt, replyCount: $replyCount, topicId: $topicId, topicSlug: $topicSlug, rawJson: $rawJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.cooked, cooked) ||
                const DeepCollectionEquality().equals(other.cooked, cooked)) &&
            (identical(other.markdown, markdown) ||
                const DeepCollectionEquality()
                    .equals(other.markdown, markdown)) &&
            (identical(other.postNumber, postNumber) ||
                const DeepCollectionEquality()
                    .equals(other.postNumber, postNumber)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.replyCount, replyCount) ||
                const DeepCollectionEquality()
                    .equals(other.replyCount, replyCount)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.topicSlug, topicSlug) ||
                const DeepCollectionEquality()
                    .equals(other.topicSlug, topicSlug)) &&
            (identical(other.rawJson, rawJson) ||
                const DeepCollectionEquality().equals(other.rawJson, rawJson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(cooked) ^
      const DeepCollectionEquality().hash(markdown) ^
      const DeepCollectionEquality().hash(postNumber) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(replyCount) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(topicSlug) ^
      const DeepCollectionEquality().hash(rawJson);

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required int id,
      required String name,
      required String username,
      required String cooked,
      @JsonKey(ignore: true) String? markdown,
      @JsonKey(name: 'post_number') required int postNumber,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt,
      @JsonKey(name: 'reply_count') required int replyCount,
      @JsonKey(name: 'topic_id') required int topicId,
      @JsonKey(name: 'topic_slug') required String topicSlug,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get cooked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get markdown => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_number')
  int get postNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'reply_count')
  int get replyCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_slug')
  String get topicSlug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  Map<String, dynamic>? get rawJson => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}

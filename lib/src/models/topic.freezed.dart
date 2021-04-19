// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
class _$TopicTearOff {
  const _$TopicTearOff();

  _Topic call(
      {required int id,
      required String title,
      required int postsCount,
      required String createdAt,
      required int views,
      required int replyCount,
      required int likeCount,
      required String lastPostedAt,
      required bool visible,
      required bool closed,
      required bool archived,
      required String slug,
      required bool pinnedGlobally,
      required bool pinned}) {
    return _Topic(
      id: id,
      title: title,
      postsCount: postsCount,
      createdAt: createdAt,
      views: views,
      replyCount: replyCount,
      likeCount: likeCount,
      lastPostedAt: lastPostedAt,
      visible: visible,
      closed: closed,
      archived: archived,
      slug: slug,
      pinnedGlobally: pinnedGlobally,
      pinned: pinned,
    );
  }

  Topic fromJson(Map<String, Object> json) {
    return Topic.fromJson(json);
  }
}

/// @nodoc
const $Topic = _$TopicTearOff();

/// @nodoc
mixin _$Topic {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get postsCount => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get replyCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  String get lastPostedAt => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  bool get pinnedGlobally => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      int postsCount,
      String createdAt,
      int views,
      int replyCount,
      int likeCount,
      String lastPostedAt,
      bool visible,
      bool closed,
      bool archived,
      String slug,
      bool pinnedGlobally,
      bool pinned});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res> implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  final Topic _value;
  // ignore: unused_field
  final $Res Function(Topic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? postsCount = freezed,
    Object? createdAt = freezed,
    Object? views = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? lastPostedAt = freezed,
    Object? visible = freezed,
    Object? closed = freezed,
    Object? archived = freezed,
    Object? slug = freezed,
    Object? pinnedGlobally = freezed,
    Object? pinned = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postsCount: postsCount == freezed
          ? _value.postsCount
          : postsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPostedAt: lastPostedAt == freezed
          ? _value.lastPostedAt
          : lastPostedAt // ignore: cast_nullable_to_non_nullable
              as String,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      pinnedGlobally: pinnedGlobally == freezed
          ? _value.pinnedGlobally
          : pinnedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) then) =
      __$TopicCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      int postsCount,
      String createdAt,
      int views,
      int replyCount,
      int likeCount,
      String lastPostedAt,
      bool visible,
      bool closed,
      bool archived,
      String slug,
      bool pinnedGlobally,
      bool pinned});
}

/// @nodoc
class __$TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(_Topic _value, $Res Function(_Topic) _then)
      : super(_value, (v) => _then(v as _Topic));

  @override
  _Topic get _value => super._value as _Topic;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? postsCount = freezed,
    Object? createdAt = freezed,
    Object? views = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? lastPostedAt = freezed,
    Object? visible = freezed,
    Object? closed = freezed,
    Object? archived = freezed,
    Object? slug = freezed,
    Object? pinnedGlobally = freezed,
    Object? pinned = freezed,
  }) {
    return _then(_Topic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postsCount: postsCount == freezed
          ? _value.postsCount
          : postsCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPostedAt: lastPostedAt == freezed
          ? _value.lastPostedAt
          : lastPostedAt // ignore: cast_nullable_to_non_nullable
              as String,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      closed: closed == freezed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      pinnedGlobally: pinnedGlobally == freezed
          ? _value.pinnedGlobally
          : pinnedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Topic implements _Topic {
  _$_Topic(
      {required this.id,
      required this.title,
      required this.postsCount,
      required this.createdAt,
      required this.views,
      required this.replyCount,
      required this.likeCount,
      required this.lastPostedAt,
      required this.visible,
      required this.closed,
      required this.archived,
      required this.slug,
      required this.pinnedGlobally,
      required this.pinned});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$_$_TopicFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int postsCount;
  @override
  final String createdAt;
  @override
  final int views;
  @override
  final int replyCount;
  @override
  final int likeCount;
  @override
  final String lastPostedAt;
  @override
  final bool visible;
  @override
  final bool closed;
  @override
  final bool archived;
  @override
  final String slug;
  @override
  final bool pinnedGlobally;
  @override
  final bool pinned;

  @override
  String toString() {
    return 'Topic(id: $id, title: $title, postsCount: $postsCount, createdAt: $createdAt, views: $views, replyCount: $replyCount, likeCount: $likeCount, lastPostedAt: $lastPostedAt, visible: $visible, closed: $closed, archived: $archived, slug: $slug, pinnedGlobally: $pinnedGlobally, pinned: $pinned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Topic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.postsCount, postsCount) ||
                const DeepCollectionEquality()
                    .equals(other.postsCount, postsCount)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.replyCount, replyCount) ||
                const DeepCollectionEquality()
                    .equals(other.replyCount, replyCount)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.lastPostedAt, lastPostedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastPostedAt, lastPostedAt)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality()
                    .equals(other.visible, visible)) &&
            (identical(other.closed, closed) ||
                const DeepCollectionEquality().equals(other.closed, closed)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.pinnedGlobally, pinnedGlobally) ||
                const DeepCollectionEquality()
                    .equals(other.pinnedGlobally, pinnedGlobally)) &&
            (identical(other.pinned, pinned) ||
                const DeepCollectionEquality().equals(other.pinned, pinned)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(postsCount) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(replyCount) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(lastPostedAt) ^
      const DeepCollectionEquality().hash(visible) ^
      const DeepCollectionEquality().hash(closed) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(pinnedGlobally) ^
      const DeepCollectionEquality().hash(pinned);

  @JsonKey(ignore: true)
  @override
  _$TopicCopyWith<_Topic> get copyWith =>
      __$TopicCopyWithImpl<_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TopicToJson(this);
  }
}

abstract class _Topic implements Topic {
  factory _Topic(
      {required int id,
      required String title,
      required int postsCount,
      required String createdAt,
      required int views,
      required int replyCount,
      required int likeCount,
      required String lastPostedAt,
      required bool visible,
      required bool closed,
      required bool archived,
      required String slug,
      required bool pinnedGlobally,
      required bool pinned}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get postsCount => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  int get views => throw _privateConstructorUsedError;
  @override
  int get replyCount => throw _privateConstructorUsedError;
  @override
  int get likeCount => throw _privateConstructorUsedError;
  @override
  String get lastPostedAt => throw _privateConstructorUsedError;
  @override
  bool get visible => throw _privateConstructorUsedError;
  @override
  bool get closed => throw _privateConstructorUsedError;
  @override
  bool get archived => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  bool get pinnedGlobally => throw _privateConstructorUsedError;
  @override
  bool get pinned => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopicCopyWith<_Topic> get copyWith => throw _privateConstructorUsedError;
}

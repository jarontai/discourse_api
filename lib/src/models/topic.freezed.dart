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
      @JsonKey(name: 'posts_count') required int postsCount,
      @JsonKey(name: 'created_at') required String createdAt,
      required int views,
      @JsonKey(name: 'reply_count') required int replyCount,
      @JsonKey(name: 'like_count') required int likeCount,
      @JsonKey(name: 'last_posted_at') required String lastPostedAt,
      required bool visible,
      required bool closed,
      required bool archived,
      @JsonKey(name: 'pinned_globally') required bool pinnedGlobally,
      required bool pinned,
      @JsonKey(name: 'category_id') required int categoryId,
      @JsonKey(ignore: true) String? categorySlug,
      @JsonKey(ignore: true) String? excerpt,
      @JsonKey(ignore: true) List<Post>? posts,
      @JsonKey(ignore: true) List<int>? postIds,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson}) {
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
      pinnedGlobally: pinnedGlobally,
      pinned: pinned,
      categoryId: categoryId,
      categorySlug: categorySlug,
      excerpt: excerpt,
      posts: posts,
      postIds: postIds,
      rawJson: rawJson,
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
  @JsonKey(name: 'posts_count')
  int get postsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_count')
  int get replyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  int get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_posted_at')
  String get lastPostedAt => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get closed => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  @JsonKey(name: 'pinned_globally')
  bool get pinnedGlobally => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get excerpt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Post>? get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<int>? get postIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Map<String, dynamic>? get rawJson => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'posts_count') int postsCount,
      @JsonKey(name: 'created_at') String createdAt,
      int views,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'like_count') int likeCount,
      @JsonKey(name: 'last_posted_at') String lastPostedAt,
      bool visible,
      bool closed,
      bool archived,
      @JsonKey(name: 'pinned_globally') bool pinnedGlobally,
      bool pinned,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(ignore: true) String? categorySlug,
      @JsonKey(ignore: true) String? excerpt,
      @JsonKey(ignore: true) List<Post>? posts,
      @JsonKey(ignore: true) List<int>? postIds,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson});
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
    Object? pinnedGlobally = freezed,
    Object? pinned = freezed,
    Object? categoryId = freezed,
    Object? categorySlug = freezed,
    Object? excerpt = freezed,
    Object? posts = freezed,
    Object? postIds = freezed,
    Object? rawJson = freezed,
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
      pinnedGlobally: pinnedGlobally == freezed
          ? _value.pinnedGlobally
          : pinnedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categorySlug: categorySlug == freezed
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
      postIds: postIds == freezed
          ? _value.postIds
          : postIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      rawJson: rawJson == freezed
          ? _value.rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
      @JsonKey(name: 'posts_count') int postsCount,
      @JsonKey(name: 'created_at') String createdAt,
      int views,
      @JsonKey(name: 'reply_count') int replyCount,
      @JsonKey(name: 'like_count') int likeCount,
      @JsonKey(name: 'last_posted_at') String lastPostedAt,
      bool visible,
      bool closed,
      bool archived,
      @JsonKey(name: 'pinned_globally') bool pinnedGlobally,
      bool pinned,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(ignore: true) String? categorySlug,
      @JsonKey(ignore: true) String? excerpt,
      @JsonKey(ignore: true) List<Post>? posts,
      @JsonKey(ignore: true) List<int>? postIds,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson});
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
    Object? pinnedGlobally = freezed,
    Object? pinned = freezed,
    Object? categoryId = freezed,
    Object? categorySlug = freezed,
    Object? excerpt = freezed,
    Object? posts = freezed,
    Object? postIds = freezed,
    Object? rawJson = freezed,
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
      pinnedGlobally: pinnedGlobally == freezed
          ? _value.pinnedGlobally
          : pinnedGlobally // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categorySlug: categorySlug == freezed
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
      postIds: postIds == freezed
          ? _value.postIds
          : postIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      rawJson: rawJson == freezed
          ? _value.rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Topic implements _Topic {
  _$_Topic(
      {required this.id,
      required this.title,
      @JsonKey(name: 'posts_count') required this.postsCount,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.views,
      @JsonKey(name: 'reply_count') required this.replyCount,
      @JsonKey(name: 'like_count') required this.likeCount,
      @JsonKey(name: 'last_posted_at') required this.lastPostedAt,
      required this.visible,
      required this.closed,
      required this.archived,
      @JsonKey(name: 'pinned_globally') required this.pinnedGlobally,
      required this.pinned,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(ignore: true) this.categorySlug,
      @JsonKey(ignore: true) this.excerpt,
      @JsonKey(ignore: true) this.posts,
      @JsonKey(ignore: true) this.postIds,
      @JsonKey(ignore: true) this.rawJson});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$_$_TopicFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'posts_count')
  final int postsCount;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final int views;
  @override
  @JsonKey(name: 'reply_count')
  final int replyCount;
  @override
  @JsonKey(name: 'like_count')
  final int likeCount;
  @override
  @JsonKey(name: 'last_posted_at')
  final String lastPostedAt;
  @override
  final bool visible;
  @override
  final bool closed;
  @override
  final bool archived;
  @override
  @JsonKey(name: 'pinned_globally')
  final bool pinnedGlobally;
  @override
  final bool pinned;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(ignore: true)
  final String? categorySlug;
  @override
  @JsonKey(ignore: true)
  final String? excerpt;
  @override
  @JsonKey(ignore: true)
  final List<Post>? posts;
  @override
  @JsonKey(ignore: true)
  final List<int>? postIds;
  @override
  @JsonKey(ignore: true)
  final Map<String, dynamic>? rawJson;

  @override
  String toString() {
    return 'Topic(id: $id, title: $title, postsCount: $postsCount, createdAt: $createdAt, views: $views, replyCount: $replyCount, likeCount: $likeCount, lastPostedAt: $lastPostedAt, visible: $visible, closed: $closed, archived: $archived, pinnedGlobally: $pinnedGlobally, pinned: $pinned, categoryId: $categoryId, categorySlug: $categorySlug, excerpt: $excerpt, posts: $posts, postIds: $postIds, rawJson: $rawJson)';
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
            (identical(other.pinnedGlobally, pinnedGlobally) ||
                const DeepCollectionEquality()
                    .equals(other.pinnedGlobally, pinnedGlobally)) &&
            (identical(other.pinned, pinned) ||
                const DeepCollectionEquality().equals(other.pinned, pinned)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categorySlug, categorySlug) ||
                const DeepCollectionEquality()
                    .equals(other.categorySlug, categorySlug)) &&
            (identical(other.excerpt, excerpt) ||
                const DeepCollectionEquality()
                    .equals(other.excerpt, excerpt)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.postIds, postIds) ||
                const DeepCollectionEquality()
                    .equals(other.postIds, postIds)) &&
            (identical(other.rawJson, rawJson) ||
                const DeepCollectionEquality().equals(other.rawJson, rawJson)));
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
      const DeepCollectionEquality().hash(pinnedGlobally) ^
      const DeepCollectionEquality().hash(pinned) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categorySlug) ^
      const DeepCollectionEquality().hash(excerpt) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(postIds) ^
      const DeepCollectionEquality().hash(rawJson);

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
      @JsonKey(name: 'posts_count') required int postsCount,
      @JsonKey(name: 'created_at') required String createdAt,
      required int views,
      @JsonKey(name: 'reply_count') required int replyCount,
      @JsonKey(name: 'like_count') required int likeCount,
      @JsonKey(name: 'last_posted_at') required String lastPostedAt,
      required bool visible,
      required bool closed,
      required bool archived,
      @JsonKey(name: 'pinned_globally') required bool pinnedGlobally,
      required bool pinned,
      @JsonKey(name: 'category_id') required int categoryId,
      @JsonKey(ignore: true) String? categorySlug,
      @JsonKey(ignore: true) String? excerpt,
      @JsonKey(ignore: true) List<Post>? posts,
      @JsonKey(ignore: true) List<int>? postIds,
      @JsonKey(ignore: true) Map<String, dynamic>? rawJson}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'posts_count')
  int get postsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  int get views => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'reply_count')
  int get replyCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'like_count')
  int get likeCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_posted_at')
  String get lastPostedAt => throw _privateConstructorUsedError;
  @override
  bool get visible => throw _privateConstructorUsedError;
  @override
  bool get closed => throw _privateConstructorUsedError;
  @override
  bool get archived => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pinned_globally')
  bool get pinnedGlobally => throw _privateConstructorUsedError;
  @override
  bool get pinned => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get categorySlug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get excerpt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<Post>? get posts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<int>? get postIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  Map<String, dynamic>? get rawJson => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopicCopyWith<_Topic> get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPost _$SearchPostFromJson(Map<String, dynamic> json) {
  return _SearchPost.fromJson(json);
}

/// @nodoc
class _$SearchPostTearOff {
  const _$SearchPostTearOff();

  _SearchPost call(
      {required int id,
      @JsonKey(name: 'topic_id') required int topicId,
      @JsonKey(name: 'avatar_template') required String avatarTemplate,
      required String name,
      required String username,
      @JsonKey(name: 'created_at') required String createdAt,
      required String blurb}) {
    return _SearchPost(
      id: id,
      topicId: topicId,
      avatarTemplate: avatarTemplate,
      name: name,
      username: username,
      createdAt: createdAt,
      blurb: blurb,
    );
  }

  SearchPost fromJson(Map<String, Object> json) {
    return SearchPost.fromJson(json);
  }
}

/// @nodoc
const $SearchPost = _$SearchPostTearOff();

/// @nodoc
mixin _$SearchPost {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_template')
  String get avatarTemplate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String get blurb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPostCopyWith<SearchPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostCopyWith<$Res> {
  factory $SearchPostCopyWith(
          SearchPost value, $Res Function(SearchPost) then) =
      _$SearchPostCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'avatar_template') String avatarTemplate,
      String name,
      String username,
      @JsonKey(name: 'created_at') String createdAt,
      String blurb});
}

/// @nodoc
class _$SearchPostCopyWithImpl<$Res> implements $SearchPostCopyWith<$Res> {
  _$SearchPostCopyWithImpl(this._value, this._then);

  final SearchPost _value;
  // ignore: unused_field
  final $Res Function(SearchPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? topicId = freezed,
    Object? avatarTemplate = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? blurb = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarTemplate: avatarTemplate == freezed
          ? _value.avatarTemplate
          : avatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      blurb: blurb == freezed
          ? _value.blurb
          : blurb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchPostCopyWith<$Res> implements $SearchPostCopyWith<$Res> {
  factory _$SearchPostCopyWith(
          _SearchPost value, $Res Function(_SearchPost) then) =
      __$SearchPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'avatar_template') String avatarTemplate,
      String name,
      String username,
      @JsonKey(name: 'created_at') String createdAt,
      String blurb});
}

/// @nodoc
class __$SearchPostCopyWithImpl<$Res> extends _$SearchPostCopyWithImpl<$Res>
    implements _$SearchPostCopyWith<$Res> {
  __$SearchPostCopyWithImpl(
      _SearchPost _value, $Res Function(_SearchPost) _then)
      : super(_value, (v) => _then(v as _SearchPost));

  @override
  _SearchPost get _value => super._value as _SearchPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? topicId = freezed,
    Object? avatarTemplate = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? blurb = freezed,
  }) {
    return _then(_SearchPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarTemplate: avatarTemplate == freezed
          ? _value.avatarTemplate
          : avatarTemplate // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      blurb: blurb == freezed
          ? _value.blurb
          : blurb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchPost implements _SearchPost {
  _$_SearchPost(
      {required this.id,
      @JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'avatar_template') required this.avatarTemplate,
      required this.name,
      required this.username,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.blurb});

  factory _$_SearchPost.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchPostFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'topic_id')
  final int topicId;
  @override
  @JsonKey(name: 'avatar_template')
  final String avatarTemplate;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String blurb;

  @override
  String toString() {
    return 'SearchPost(id: $id, topicId: $topicId, avatarTemplate: $avatarTemplate, name: $name, username: $username, createdAt: $createdAt, blurb: $blurb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.avatarTemplate, avatarTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.avatarTemplate, avatarTemplate)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.blurb, blurb) ||
                const DeepCollectionEquality().equals(other.blurb, blurb)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(avatarTemplate) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(blurb);

  @JsonKey(ignore: true)
  @override
  _$SearchPostCopyWith<_SearchPost> get copyWith =>
      __$SearchPostCopyWithImpl<_SearchPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchPostToJson(this);
  }
}

abstract class _SearchPost implements SearchPost {
  factory _SearchPost(
      {required int id,
      @JsonKey(name: 'topic_id') required int topicId,
      @JsonKey(name: 'avatar_template') required String avatarTemplate,
      required String name,
      required String username,
      @JsonKey(name: 'created_at') required String createdAt,
      required String blurb}) = _$_SearchPost;

  factory _SearchPost.fromJson(Map<String, dynamic> json) =
      _$_SearchPost.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_template')
  String get avatarTemplate => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get blurb => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchPostCopyWith<_SearchPost> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchTopic _$SearchTopicFromJson(Map<String, dynamic> json) {
  return _SearchTopic.fromJson(json);
}

/// @nodoc
class _$SearchTopicTearOff {
  const _$SearchTopicTearOff();

  _SearchTopic call(
      {required int id,
      required String title,
      @JsonKey(name: 'created_at') required String createdAt}) {
    return _SearchTopic(
      id: id,
      title: title,
      createdAt: createdAt,
    );
  }

  SearchTopic fromJson(Map<String, Object> json) {
    return SearchTopic.fromJson(json);
  }
}

/// @nodoc
const $SearchTopic = _$SearchTopicTearOff();

/// @nodoc
mixin _$SearchTopic {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTopicCopyWith<SearchTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTopicCopyWith<$Res> {
  factory $SearchTopicCopyWith(
          SearchTopic value, $Res Function(SearchTopic) then) =
      _$SearchTopicCopyWithImpl<$Res>;
  $Res call(
      {int id, String title, @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$SearchTopicCopyWithImpl<$Res> implements $SearchTopicCopyWith<$Res> {
  _$SearchTopicCopyWithImpl(this._value, this._then);

  final SearchTopic _value;
  // ignore: unused_field
  final $Res Function(SearchTopic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchTopicCopyWith<$Res>
    implements $SearchTopicCopyWith<$Res> {
  factory _$SearchTopicCopyWith(
          _SearchTopic value, $Res Function(_SearchTopic) then) =
      __$SearchTopicCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String title, @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$SearchTopicCopyWithImpl<$Res> extends _$SearchTopicCopyWithImpl<$Res>
    implements _$SearchTopicCopyWith<$Res> {
  __$SearchTopicCopyWithImpl(
      _SearchTopic _value, $Res Function(_SearchTopic) _then)
      : super(_value, (v) => _then(v as _SearchTopic));

  @override
  _SearchTopic get _value => super._value as _SearchTopic;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_SearchTopic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchTopic implements _SearchTopic {
  _$_SearchTopic(
      {required this.id,
      required this.title,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$_SearchTopic.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchTopicFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'SearchTopic(id: $id, title: $title, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTopic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$SearchTopicCopyWith<_SearchTopic> get copyWith =>
      __$SearchTopicCopyWithImpl<_SearchTopic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchTopicToJson(this);
  }
}

abstract class _SearchTopic implements SearchTopic {
  factory _SearchTopic(
      {required int id,
      required String title,
      @JsonKey(name: 'created_at') required String createdAt}) = _$_SearchTopic;

  factory _SearchTopic.fromJson(Map<String, dynamic> json) =
      _$_SearchTopic.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchTopicCopyWith<_SearchTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

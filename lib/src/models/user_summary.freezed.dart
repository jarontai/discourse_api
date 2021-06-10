// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSummary _$UserSummaryFromJson(Map<String, dynamic> json) {
  return _UserSummary.fromJson(json);
}

/// @nodoc
class _$UserSummaryTearOff {
  const _$UserSummaryTearOff();

  _UserSummary call(
      {@JsonKey(name: 'likes_given') required int likesGiven,
      @JsonKey(name: 'likes_received') required int likesReceived,
      @JsonKey(name: 'post_count') required int postCount,
      @JsonKey(name: 'posts_read_count') required int postsReadCount,
      @JsonKey(name: 'time_read') required int timeRead,
      @JsonKey(name: 'topic_count') required int topicCount,
      @JsonKey(name: 'topics_entered') required int topicsEntered}) {
    return _UserSummary(
      likesGiven: likesGiven,
      likesReceived: likesReceived,
      postCount: postCount,
      postsReadCount: postsReadCount,
      timeRead: timeRead,
      topicCount: topicCount,
      topicsEntered: topicsEntered,
    );
  }

  UserSummary fromJson(Map<String, Object> json) {
    return UserSummary.fromJson(json);
  }
}

/// @nodoc
const $UserSummary = _$UserSummaryTearOff();

/// @nodoc
mixin _$UserSummary {
  @JsonKey(name: 'likes_given')
  int get likesGiven => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_received')
  int get likesReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_count')
  int get postCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'posts_read_count')
  int get postsReadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_read')
  int get timeRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_count')
  int get topicCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'topics_entered')
  int get topicsEntered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSummaryCopyWith<UserSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSummaryCopyWith<$Res> {
  factory $UserSummaryCopyWith(
          UserSummary value, $Res Function(UserSummary) then) =
      _$UserSummaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'likes_given') int likesGiven,
      @JsonKey(name: 'likes_received') int likesReceived,
      @JsonKey(name: 'post_count') int postCount,
      @JsonKey(name: 'posts_read_count') int postsReadCount,
      @JsonKey(name: 'time_read') int timeRead,
      @JsonKey(name: 'topic_count') int topicCount,
      @JsonKey(name: 'topics_entered') int topicsEntered});
}

/// @nodoc
class _$UserSummaryCopyWithImpl<$Res> implements $UserSummaryCopyWith<$Res> {
  _$UserSummaryCopyWithImpl(this._value, this._then);

  final UserSummary _value;
  // ignore: unused_field
  final $Res Function(UserSummary) _then;

  @override
  $Res call({
    Object? likesGiven = freezed,
    Object? likesReceived = freezed,
    Object? postCount = freezed,
    Object? postsReadCount = freezed,
    Object? timeRead = freezed,
    Object? topicCount = freezed,
    Object? topicsEntered = freezed,
  }) {
    return _then(_value.copyWith(
      likesGiven: likesGiven == freezed
          ? _value.likesGiven
          : likesGiven // ignore: cast_nullable_to_non_nullable
              as int,
      likesReceived: likesReceived == freezed
          ? _value.likesReceived
          : likesReceived // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      postsReadCount: postsReadCount == freezed
          ? _value.postsReadCount
          : postsReadCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeRead: timeRead == freezed
          ? _value.timeRead
          : timeRead // ignore: cast_nullable_to_non_nullable
              as int,
      topicCount: topicCount == freezed
          ? _value.topicCount
          : topicCount // ignore: cast_nullable_to_non_nullable
              as int,
      topicsEntered: topicsEntered == freezed
          ? _value.topicsEntered
          : topicsEntered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserSummaryCopyWith<$Res>
    implements $UserSummaryCopyWith<$Res> {
  factory _$UserSummaryCopyWith(
          _UserSummary value, $Res Function(_UserSummary) then) =
      __$UserSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'likes_given') int likesGiven,
      @JsonKey(name: 'likes_received') int likesReceived,
      @JsonKey(name: 'post_count') int postCount,
      @JsonKey(name: 'posts_read_count') int postsReadCount,
      @JsonKey(name: 'time_read') int timeRead,
      @JsonKey(name: 'topic_count') int topicCount,
      @JsonKey(name: 'topics_entered') int topicsEntered});
}

/// @nodoc
class __$UserSummaryCopyWithImpl<$Res> extends _$UserSummaryCopyWithImpl<$Res>
    implements _$UserSummaryCopyWith<$Res> {
  __$UserSummaryCopyWithImpl(
      _UserSummary _value, $Res Function(_UserSummary) _then)
      : super(_value, (v) => _then(v as _UserSummary));

  @override
  _UserSummary get _value => super._value as _UserSummary;

  @override
  $Res call({
    Object? likesGiven = freezed,
    Object? likesReceived = freezed,
    Object? postCount = freezed,
    Object? postsReadCount = freezed,
    Object? timeRead = freezed,
    Object? topicCount = freezed,
    Object? topicsEntered = freezed,
  }) {
    return _then(_UserSummary(
      likesGiven: likesGiven == freezed
          ? _value.likesGiven
          : likesGiven // ignore: cast_nullable_to_non_nullable
              as int,
      likesReceived: likesReceived == freezed
          ? _value.likesReceived
          : likesReceived // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      postsReadCount: postsReadCount == freezed
          ? _value.postsReadCount
          : postsReadCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeRead: timeRead == freezed
          ? _value.timeRead
          : timeRead // ignore: cast_nullable_to_non_nullable
              as int,
      topicCount: topicCount == freezed
          ? _value.topicCount
          : topicCount // ignore: cast_nullable_to_non_nullable
              as int,
      topicsEntered: topicsEntered == freezed
          ? _value.topicsEntered
          : topicsEntered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserSummary extends _UserSummary {
  _$_UserSummary(
      {@JsonKey(name: 'likes_given') required this.likesGiven,
      @JsonKey(name: 'likes_received') required this.likesReceived,
      @JsonKey(name: 'post_count') required this.postCount,
      @JsonKey(name: 'posts_read_count') required this.postsReadCount,
      @JsonKey(name: 'time_read') required this.timeRead,
      @JsonKey(name: 'topic_count') required this.topicCount,
      @JsonKey(name: 'topics_entered') required this.topicsEntered})
      : super._();

  factory _$_UserSummary.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSummaryFromJson(json);

  @override
  @JsonKey(name: 'likes_given')
  final int likesGiven;
  @override
  @JsonKey(name: 'likes_received')
  final int likesReceived;
  @override
  @JsonKey(name: 'post_count')
  final int postCount;
  @override
  @JsonKey(name: 'posts_read_count')
  final int postsReadCount;
  @override
  @JsonKey(name: 'time_read')
  final int timeRead;
  @override
  @JsonKey(name: 'topic_count')
  final int topicCount;
  @override
  @JsonKey(name: 'topics_entered')
  final int topicsEntered;

  @override
  String toString() {
    return 'UserSummary(likesGiven: $likesGiven, likesReceived: $likesReceived, postCount: $postCount, postsReadCount: $postsReadCount, timeRead: $timeRead, topicCount: $topicCount, topicsEntered: $topicsEntered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSummary &&
            (identical(other.likesGiven, likesGiven) ||
                const DeepCollectionEquality()
                    .equals(other.likesGiven, likesGiven)) &&
            (identical(other.likesReceived, likesReceived) ||
                const DeepCollectionEquality()
                    .equals(other.likesReceived, likesReceived)) &&
            (identical(other.postCount, postCount) ||
                const DeepCollectionEquality()
                    .equals(other.postCount, postCount)) &&
            (identical(other.postsReadCount, postsReadCount) ||
                const DeepCollectionEquality()
                    .equals(other.postsReadCount, postsReadCount)) &&
            (identical(other.timeRead, timeRead) ||
                const DeepCollectionEquality()
                    .equals(other.timeRead, timeRead)) &&
            (identical(other.topicCount, topicCount) ||
                const DeepCollectionEquality()
                    .equals(other.topicCount, topicCount)) &&
            (identical(other.topicsEntered, topicsEntered) ||
                const DeepCollectionEquality()
                    .equals(other.topicsEntered, topicsEntered)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likesGiven) ^
      const DeepCollectionEquality().hash(likesReceived) ^
      const DeepCollectionEquality().hash(postCount) ^
      const DeepCollectionEquality().hash(postsReadCount) ^
      const DeepCollectionEquality().hash(timeRead) ^
      const DeepCollectionEquality().hash(topicCount) ^
      const DeepCollectionEquality().hash(topicsEntered);

  @JsonKey(ignore: true)
  @override
  _$UserSummaryCopyWith<_UserSummary> get copyWith =>
      __$UserSummaryCopyWithImpl<_UserSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSummaryToJson(this);
  }
}

abstract class _UserSummary extends UserSummary {
  factory _UserSummary(
          {@JsonKey(name: 'likes_given') required int likesGiven,
          @JsonKey(name: 'likes_received') required int likesReceived,
          @JsonKey(name: 'post_count') required int postCount,
          @JsonKey(name: 'posts_read_count') required int postsReadCount,
          @JsonKey(name: 'time_read') required int timeRead,
          @JsonKey(name: 'topic_count') required int topicCount,
          @JsonKey(name: 'topics_entered') required int topicsEntered}) =
      _$_UserSummary;
  _UserSummary._() : super._();

  factory _UserSummary.fromJson(Map<String, dynamic> json) =
      _$_UserSummary.fromJson;

  @override
  @JsonKey(name: 'likes_given')
  int get likesGiven => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'likes_received')
  int get likesReceived => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_count')
  int get postCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'posts_read_count')
  int get postsReadCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'time_read')
  int get timeRead => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topic_count')
  int get topicCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'topics_entered')
  int get topicsEntered => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSummaryCopyWith<_UserSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

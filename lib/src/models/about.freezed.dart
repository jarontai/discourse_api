// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

About _$AboutFromJson(Map<String, dynamic> json) {
  return _About.fromJson(json);
}

/// @nodoc
class _$AboutTearOff {
  const _$AboutTearOff();

  _About call(
      {required String description,
      required String title,
      required String version}) {
    return _About(
      description: description,
      title: title,
      version: version,
    );
  }

  About fromJson(Map<String, Object> json) {
    return About.fromJson(json);
  }
}

/// @nodoc
const $About = _$AboutTearOff();

/// @nodoc
mixin _$About {
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutCopyWith<About> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCopyWith<$Res> {
  factory $AboutCopyWith(About value, $Res Function(About) then) =
      _$AboutCopyWithImpl<$Res>;
  $Res call({String description, String title, String version});
}

/// @nodoc
class _$AboutCopyWithImpl<$Res> implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._value, this._then);

  final About _value;
  // ignore: unused_field
  final $Res Function(About) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? title = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$AboutCopyWith(_About value, $Res Function(_About) then) =
      __$AboutCopyWithImpl<$Res>;
  @override
  $Res call({String description, String title, String version});
}

/// @nodoc
class __$AboutCopyWithImpl<$Res> extends _$AboutCopyWithImpl<$Res>
    implements _$AboutCopyWith<$Res> {
  __$AboutCopyWithImpl(_About _value, $Res Function(_About) _then)
      : super(_value, (v) => _then(v as _About));

  @override
  _About get _value => super._value as _About;

  @override
  $Res call({
    Object? description = freezed,
    Object? title = freezed,
    Object? version = freezed,
  }) {
    return _then(_About(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_About implements _About {
  _$_About(
      {required this.description, required this.title, required this.version});

  factory _$_About.fromJson(Map<String, dynamic> json) =>
      _$_$_AboutFromJson(json);

  @override
  final String description;
  @override
  final String title;
  @override
  final String version;

  @override
  String toString() {
    return 'About(description: $description, title: $title, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _About &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$AboutCopyWith<_About> get copyWith =>
      __$AboutCopyWithImpl<_About>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AboutToJson(this);
  }
}

abstract class _About implements About {
  factory _About(
      {required String description,
      required String title,
      required String version}) = _$_About;

  factory _About.fromJson(Map<String, dynamic> json) = _$_About.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AboutCopyWith<_About> get copyWith => throw _privateConstructorUsedError;
}

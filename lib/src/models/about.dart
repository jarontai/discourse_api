import 'package:freezed_annotation/freezed_annotation.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
class About with _$About {
  factory About({
    required String description,
    required String title,
    required String version,
  }) = _About;

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
}

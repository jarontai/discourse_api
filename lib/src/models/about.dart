import 'dart:convert';

class About {
  final String description;
  final String title;
  final String version;

  About({
    required this.description,
    required this.title,
    required this.version,
  });

  About copyWith({
    String? description,
    String? title,
    String? version,
  }) {
    return About(
      description: description ?? this.description,
      title: title ?? this.title,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'title': title,
      'version': version,
    };
  }

  factory About.fromMap(Map<String, dynamic> map) {
    return About(
      description: map['description'],
      title: map['title'],
      version: map['version'],
    );
  }

  String toJson() => json.encode(toMap());

  factory About.fromJson(String source) => About.fromMap(json.decode(source));

  @override
  String toString() =>
      'About(description: $description, title: $title, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is About &&
        other.description == description &&
        other.title == title &&
        other.version == version;
  }

  @override
  int get hashCode => description.hashCode ^ title.hashCode ^ version.hashCode;
}

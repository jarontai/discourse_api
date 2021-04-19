import 'dart:convert';

class Category {
  final int id;
  final String name;
  final String color;
  final String slug;
  final int topicCount;
  final String description;

  Category({
    required this.id,
    required this.name,
    required this.color,
    required this.slug,
    required this.topicCount,
    required this.description,
  });

  Category copyWith({
    int? id,
    String? name,
    String? color,
    String? slug,
    int? topicCount,
    String? description,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      slug: slug ?? this.slug,
      topicCount: topicCount ?? this.topicCount,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'slug': slug,
      'topicCount': topicCount,
      'description': description,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
      color: map['color'],
      slug: map['slug'],
      topicCount: map['topic_count'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(id: $id, name: $name, color: $color, slug: $slug, topicCount: $topicCount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.name == name &&
        other.color == color &&
        other.slug == slug &&
        other.topicCount == topicCount &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        color.hashCode ^
        slug.hashCode ^
        topicCount.hashCode ^
        description.hashCode;
  }
}

import 'dart:convert';

class Topic {
  final int id;
  final String title;
  final int postsCount;
  final String createdAt;
  final int views;
  final int replyCount;
  final int likeCount;
  final String lastPostedAt;
  final bool visible;
  final bool closed;
  final bool archived;
  final String slug;
  final bool pinnedGlobally;
  final bool pinned;

  Topic({
    required this.id,
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
    required this.pinned,
  });

  Topic copyWith({
    int? id,
    String? title,
    int? postsCount,
    String? createdAt,
    int? views,
    int? replyCount,
    int? likeCount,
    String? lastPostedAt,
    bool? visible,
    bool? closed,
    bool? archived,
    String? slug,
    bool? pinnedGlobally,
    bool? pinned,
    bool? hasDeleted,
  }) {
    return Topic(
      id: id ?? this.id,
      title: title ?? this.title,
      postsCount: postsCount ?? this.postsCount,
      createdAt: createdAt ?? this.createdAt,
      views: views ?? this.views,
      replyCount: replyCount ?? this.replyCount,
      likeCount: likeCount ?? this.likeCount,
      lastPostedAt: lastPostedAt ?? this.lastPostedAt,
      visible: visible ?? this.visible,
      closed: closed ?? this.closed,
      archived: archived ?? this.archived,
      slug: slug ?? this.slug,
      pinnedGlobally: pinnedGlobally ?? this.pinnedGlobally,
      pinned: pinned ?? this.pinned,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'postsCount': postsCount,
      'createdAt': createdAt,
      'views': views,
      'replyCount': replyCount,
      'likeCount': likeCount,
      'lastPostedAt': lastPostedAt,
      'visible': visible,
      'closed': closed,
      'archived': archived,
      'slug': slug,
      'pinnedGlobally': pinnedGlobally,
      'pinned': pinned,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      id: map['id'],
      title: map['title'],
      postsCount: map['posts_count'],
      createdAt: map['created_at'],
      views: map['views'],
      replyCount: map['reply_count'],
      likeCount: map['like_count'],
      lastPostedAt: map['last_posted_at'],
      visible: map['visible'],
      closed: map['closed'],
      archived: map['archived'],
      slug: map['slug'],
      pinnedGlobally: map['pinned_globally'],
      pinned: map['pinned'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Topic.fromJson(String source) => Topic.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Topic(id: $id, title: $title, postsCount: $postsCount, createdAt: $createdAt, views: $views, replyCount: $replyCount, likeCount: $likeCount, lastPostedAt: $lastPostedAt, visible: $visible, closed: $closed, archived: $archived, slug: $slug, pinnedGlobally: $pinnedGlobally, pinned: $pinned)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Topic &&
        other.id == id &&
        other.title == title &&
        other.postsCount == postsCount &&
        other.createdAt == createdAt &&
        other.views == views &&
        other.replyCount == replyCount &&
        other.likeCount == likeCount &&
        other.lastPostedAt == lastPostedAt &&
        other.visible == visible &&
        other.closed == closed &&
        other.archived == archived &&
        other.slug == slug &&
        other.pinnedGlobally == pinnedGlobally &&
        other.pinned == pinned;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        postsCount.hashCode ^
        createdAt.hashCode ^
        views.hashCode ^
        replyCount.hashCode ^
        likeCount.hashCode ^
        lastPostedAt.hashCode ^
        visible.hashCode ^
        closed.hashCode ^
        archived.hashCode ^
        slug.hashCode ^
        pinnedGlobally.hashCode ^
        pinned.hashCode;
  }
}

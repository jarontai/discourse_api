part of '../client.dart';

const kTopicPageSize = 30;

extension TopicClient on DiscourseApiClient {
  Topic _buildTopic(Map<String, dynamic> json,
      {List<dynamic>? users, List<dynamic>? postersJson}) {
    var result = Topic.fromJson(json);
    result = result.copyWith(
      rawJson: json,
    );
    if (json['excerpt'] != null) {
      result = result.copyWith(
        excerpt: json['excerpt'],
      );
    }
    if (json['post_stream'] != null && json['post_stream']['posts'] != null) {
      List postList = json['post_stream']['posts'];
      result = result.copyWith(
        posts: postList.map((e) => _buildPost(e, cooked2md: true)).toList(),
      );
    }
    if (json['post_stream'] != null && json['post_stream']['stream'] != null) {
      List postIdList = json['post_stream']['stream'];
      result = result.copyWith(
        postIds: postIdList.map((e) => int.parse((e.toString()))).toList(),
      );
    }
    if (json['posters'] != null || postersJson != null) {
      List posters = postersJson ?? json['posters'];
      result = result.copyWith(
        posterIds: posters.map((e) => e['user_id'] as int).toList(),
      );
    }
    if (json['last_posted_at'] != null) {
      result = result.copyWith(
        lastPostedAt: DateTime.tryParse(json['last_posted_at']),
      );
    }
    if (users != null) {
      result = result.copyWith(
        users: users.map((e) {
          var user = User.fromJson(e);
          if (cdnUrl != null) {
            user = user.copyWith(
              avatar: user.genAvatar(size: 120, cdn: cdnUrl),
            );
          }
          return user;
        }).toList(),
      );
    }
    return result;
  }

  Future<List<Topic>> topicList({
    bool latest = true,
    bool top = false,
    String? categorySlug,
    int? categoryId,
    int? page,
  }) async {
    var result = <Topic>[];

    // TODO: Top list
    if (latest) {
      var url;
      if (categoryId != null && categorySlug != null) {
        url = '$siteUrl/c/$categorySlug/$categoryId/l/latest.json';
      } else {
        url = '$siteUrl/latest';
      }

      if (page != null && page > 0) {
        url = '$url?page=$page';
      }

      var res = await _dio.get(url);
      List list = res.data['topic_list']['topics'];
      result.addAll(list
          .map((json) => _buildTopic(json, users: res.data['users']))
          .where((element) => element.visible)
          .toList());
    }

    return result;
  }

  Future<Topic> topicDetail(int topicId) async {
    var res = await _dio.get('$siteUrl/t/$topicId');
    return _buildTopic(res.data);
  }

  Future<Topic> topicCreate(String title, String raw, {int? categoryId}) async {
    var data = {
      'title': title,
      'raw': raw,
      if (categoryId != null) 'category': categoryId,
    };
    var options = await _csrfOptions(refresh: true);
    var res = await _dio.post('$siteUrl/posts', options: options, data: data);
    var topicId = res.data['topic_id'];
    return topicDetail(topicId);
  }

  Future<int> topicUpdate(int topicId, String title, {int? categoryId}) async {
    var data = {
      'title': title,
      if (categoryId != null) 'category_id': categoryId,
    };
    var options = await _csrfOptions();

    var result;
    try {
      var res = await _dio.put('$siteUrl/t/topic/$topicId',
          options: options, data: data);
      result = res.data['basic_topic']['id'];
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response!.data);
        print(e.response!.headers);
      }
    }

    return result;
  }

  Future<void> topicDelete(int topicId) async {
    var options = await _csrfOptions();
    await _dio.delete(
      '$siteUrl/t/$topicId',
      options: options,
    );
  }
}

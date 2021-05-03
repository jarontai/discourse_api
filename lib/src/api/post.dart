part of '../client.dart';

const kPostPageSize = 20;

extension PostClient on DiscourseApiClient {
  Post _buildPost(Map<String, dynamic> json) {
    var result = Post.fromJson(json);
    result = result.copyWith(
      rawJson: json,
    );
    return result;
  }

  Future<List<Post>> topicPosts(Topic topic, {int page = 0}) async {
    var result = <Post>[];

    if (topic.postIds != null && topic.posts != null) {
      if (page == 0) {
        result.addAll(topic.posts!.toList());
      } else if (page > 0) {
        var postIds = topic.postIds;
        var topicId = topic.id;
        if (postIds != null &&
            postIds.isNotEmpty &&
            postIds.length > kPostPageSize) {
          var start = page * kPostPageSize;
          var end = (page + 1) * kPostPageSize - 1;
          var last = postIds.length - 1;
          if (end > last) {
            end = last;
          }

          if (start <= last && start <= end) {
            var ids = postIds.getRange(start, end);
            var res =
                await _dio.get('$siteUrl/t/$topicId/posts', queryParameters: {
              'post_ids[]': ids.toList(),
            });
            List postList = res.data['post_stream']['posts'];
            result.addAll(postList.map((e) => _buildPost(e)));
          }
        }
      }
    }

    return result;
  }

  Future<Post> postCreate(int topicId, String raw) async {
    var data = {
      'raw': raw,
      'topic_id': topicId,
    };
    var options = await _csrfOptions();
    var res = await _dio.post('$siteUrl/posts', options: options, data: data);
    var result = _buildPost(res.data);
    return result;
  }

  Future<Post> postUpdate(int topicId, int postId, String raw,
      {String? editReason}) async {
    var data = {
      'raw': raw,
      'topic_id': topicId,
      if (editReason != null) 'edit_reason': editReason,
    };
    var options = await _csrfOptions();
    var res =
        await _dio.put('$siteUrl/posts/$postId', options: options, data: data);
    var result = _buildPost(res.data['post']);
    return result;
  }

  Future<void> postDelete(int postId) async {
    var options = await _csrfOptions();
    await _dio.delete(
      '$siteUrl/posts/$postId',
      options: options,
    );
  }
}

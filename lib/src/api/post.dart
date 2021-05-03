part of '../client.dart';

extension PostClient on DiscourseApiClient {
  Post _buildPost(Map<String, dynamic> json) {
    var result = Post.fromJson(json);
    result = result.copyWith(
      rawJson: json,
    );
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

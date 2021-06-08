part of '../client.dart';

const kPostPageSize = 20;
const kDefaultPostType = 1;

final oneboxRule = html2md.Rule(
  'discourse-onebox',
  filterFn: (node) {
    if (node.className.contains('onebox') &&
        node.className.contains('lazyYT')) {
      return true;
    }
    if (node.nodeName == 'aside' && node.className.contains('onebox')) {
      return true;
    }
    return false;
  },
  replacement: (content, node) {
    // Find the html5 video
    var first = node.firstChild;
    var last = node.childNodes().last;
    if (first != null && first.nodeName == 'a') {
      var href = first.getAttribute('href');
      var img = first.firstChild;
      if (href != null && img != null && img.nodeName == 'img') {
        return '[${img.getAttribute('title') ?? href}]($href)';
      }
    }
    if (last.className.contains('html5-info-bar')) {
      var link = last.firstChild?.firstChild?.firstChild;
      if (link != null) {
        var href = link.getAttribute('href');
        if (href != null && href.isNotEmpty) {
          return '[${link.textContent}]($href)';
        }
      }
    }

    // Find the link under header
    if (first != null && first.nodeName == 'header') {
      var link =
          first.childNodes().firstWhere((element) => element.nodeName == 'a');
      var href = link.getAttribute('href');
      if (href != null && href.isNotEmpty) {
        return '[$href]($href)';
      }
    }

    return '';
  },
);

final emojiRule = html2md.Rule(
  'discourse-emoji',
  filterFn: (node) {
    if (node.className.contains('emoji') && node.nodeName == 'img') {
      return true;
    }
    return false;
  },
  replacement: (content, node) {
    var result = node.getAttribute('title');
    result ??= node.getAttribute('alt');
    return result ?? '';
  },
);

final lighboxRule = html2md.Rule(
  'discourse-lightbox',
  filterFn: (node) {
    if (node.className.contains('lightbox') && node.nodeName == 'a') {
      return true;
    }
    return false;
  },
  replacement: (content, node) {
    var first = node.firstChild;
    if (first != null && first.nodeName == 'img') {
      var alt = first.getAttribute('alt') ?? '';
      var src = first.getAttribute('src') ?? '';
      var title = first.getAttribute('title') ?? '';
      var titlePart = title.isNotEmpty ? ' "' + title + '"' : '';

      var size = '';
      var width = first.getAttribute('width') ?? '';
      var height = first.getAttribute('height') ?? '';
      if (width.isNotEmpty && height.isNotEmpty) {
        size = '#${width}x$height';
      }

      return src.isNotEmpty
          ? '![' + alt + ']' + '(' + src + titlePart + size + ')'
          : '';
    }
    return '';
  },
);

extension PostClient on DiscourseApiClient {
  Post _buildPost(Map<String, dynamic> json, {bool cooked2md = true}) {
    var result = Post.fromJson(json);
    result = result.copyWith(
      rawJson: json,
    );
    if (cooked2md) {
      result = result.copyWith(
        markdown: html2md.convert(
          result.cooked,
          rules: [emojiRule, oneboxRule, lighboxRule],
        ),
      );
    }
    if (cdnUrl != null) {
      result = result.copyWith(
        avatar:
            DiscourseApiClient.genAvatar(result.avatarTemplate, cdn: cdnUrl),
      );
    }
    return result;
  }

  Future<PageModel<Post>> topicPosts(Topic topic,
      {int page = 0, bool filterPost = true}) async {
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
          var end = (page + 1) * kPostPageSize;
          var last = postIds.length;
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
            result.addAll(postList.map((e) => _buildPost(e, cooked2md: true)));
          }
        }
      }
    }

    if (filterPost) {
      result = result
          .where((element) => element.postType == kDefaultPostType)
          .toList();
    }

    return PageModel(data: result, page: page, pageSize: kPostPageSize);
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

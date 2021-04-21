import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'models/models.dart';

class DiscourseApiClient {
  final String siteUrl;
  late final Dio _dio;

  DiscourseApiClient(String siteUrl, {String? cookieDir})
      : siteUrl = _prepareUrl(siteUrl) {
    var cookieJar;
    if (cookieDir != null) {
      cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage(cookieDir + '/.cookies/'),
      );
    } else {
      cookieJar = CookieJar();
    }
    var dio = Dio();
    dio.options = BaseOptions(headers: {
      'Origin': siteUrl,
      'Referer': siteUrl,
      'x-requested-with': 'XMLHttpRequest',
      Headers.acceptHeader: Headers.jsonContentType,
    });
    dio.interceptors.add(CookieManager(cookieJar));
    _dio = dio;
  }

  static String _prepareUrl(String url) {
    if (url.endsWith('/')) {
      return url.substring(0, url.length - 2);
    }
    return url;
  }

  Future<String> _csrf() async {
    var res = await _dio.get('$siteUrl/session/csrf',
        options: Options(headers: {
          'X-CSRF-Token': 'undefined',
          'Referer': siteUrl,
        }));
    return res.data['csrf'];
  }

  Future<Options> _csrfOptions() async {
    var csrfToken = await _csrf();
    var options = Options(
      headers: {
        'x-csrf-token': csrfToken,
      },
    );
    return options;
  }

  Topic _buildTopic(Map<String, dynamic> json) {
    var result = Topic.fromJson(json);
    List postList = json['post_stream']['posts'];
    List postIdList = json['post_stream']['stream'];
    result = result.copyWith(
      posts: postList.map((e) => Post.fromJson(e)).toList(),
      postIds: postIdList.map((e) => int.parse((e.toString()))).toList(),
    );
    return result;
  }

  Future<About> about() async {
    var res = await _dio.get('$siteUrl/about');
    var jsonMap = res.data['about'];
    return About.fromJson(jsonMap);
  }

  Future<User> login(String username, String password) async {
    var csrfToken = await _csrf();
    assert(csrfToken.length >= 80, 'csrf token error');
    var res = await _dio.post('$siteUrl/session',
        options: Options(
          headers: {
            'x-csrf-token': csrfToken,
          },
          contentType: Headers.formUrlEncodedContentType,
        ),
        data: {
          'login': username,
          'password': password,
          'authenticity_token': csrfToken,
        });

    var jsonMap = res.data['user'];
    return User.fromJson(jsonMap);
  }

  Future<List<Category>> categories() async {
    var res = await _dio.get('$siteUrl/categories');
    List list = res.data['category_list']['categories'];
    return list.map((map) => Category.fromJson(map)).toList();
  }

  Future<List<Topic>> topicList({
    bool latest = true,
    bool top = false,
    int? page,
  }) async {
    var result = <Topic>[];

    if (latest) {
      var res = await _dio.get('$siteUrl/latest');
      List list = res.data['topic_list']['topics'];
      result.addAll(list.map((map) => Topic.fromJson(map)));
    }
    // TODO: More
    return result;
  }

  Future<Topic> topicDetail(int topicId) async {
    var res = await _dio.get('$siteUrl/t/$topicId');
    return _buildTopic(res.data);
  }

  Future<int> topicCreate(String title, String raw, {int? categoryId}) async {
    var data = {
      'title': title,
      'raw': raw,
      if (categoryId != null) 'category': categoryId,
    };
    var options = await _csrfOptions();
    var res = await _dio.post('$siteUrl/posts', options: options, data: data);
    var result = res.data['topic_id'];
    return result;
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

  Future<bool> topicDelete(int topicId) async {
    var options = await _csrfOptions();
    await _dio.delete(
      '$siteUrl/t/$topicId',
      options: options,
    );
    return true;
  }

  Future<List<Post>> topicPosts(Topic topic,
      {int page = 0, int pageSize = 20}) async {
    var postIds = topic.postIds;
    var topicId = topic.id;

    var result = <Post>[];
    if (postIds != null && postIds.isNotEmpty) {
      var start = page * pageSize;
      var end = (page + 1) * pageSize;
      if (start > postIds.length) {
        start = postIds.length;
      } else if (end > postIds.length) {
        end = postIds.length - 1;
      }

      if (start <= end) {
        var ids = postIds.getRange(start, end);
        var res = await _dio.get('$siteUrl/t/$topicId/posts', queryParameters: {
          'post_ids[]': ids.toList(),
        });
        List postList = res.data['post_stream']['posts'];
        result.addAll(postList.map((e) => Post.fromJson(e)));
      }
    }

    return result;
  }

  Future<Post> postCreate(int topicId, String title, String raw,
      {int? categoryId}) async {
    var data = {
      'title': title,
      'raw': raw,
      'topic_id': topicId,
      if (categoryId != null) 'category': categoryId,
    };
    var options = await _csrfOptions();
    var res = await _dio.post('$siteUrl/posts', options: options, data: data);
    var result = Post.fromJson(res.data);
    return result;
  }

  Future<Post> postUpdate(int postId, String raw, {String? editReason}) async {
    var data = {
      'raw': raw,
      if (editReason != null) 'edit_reason': editReason,
    };
    var options = await _csrfOptions();
    var res =
        await _dio.put('$siteUrl/posts/$postId', options: options, data: data);
    var result = Post.fromJson(res.data['post']);
    return result;
  }

//   Future<bool> postDelete(int postId) async {
//     var options = await _csrfOptions();

// // context: /t/topic/1660

//     try {
//       await _dio.delete(
//         '$siteUrl/posts/$postId',
//         options: options,
//       );
//     } on DioError catch (e) {
//       // The request was made and the server responded with a status code
//       // that falls out of the range of 2xx and is also not 304.
//       if (e.response != null) {
//         print(e.response!.data);
//         print(e.response!.headers);
//         // print(e.response!.request);
//       } else {
//         // Something happened in setting up or sending the request that triggered an Error
//         print(e.request);
//         print(e.message);
//       }
//     }

//     return true;
//   }
}

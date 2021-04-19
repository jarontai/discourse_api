import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'models/models.dart';

class DiscourseApiClient {
  final String siteUrl;
  late final Dio _dio;
  late final CookieJar _cookieJar;

  DiscourseApiClient(String siteUrl) : siteUrl = _prepareUrl(siteUrl) {
    var cookieJar = CookieJar();
    var dio = Dio();
    dio.options = BaseOptions(headers: {
      Headers.acceptHeader: Headers.jsonContentType,
    });
    dio.interceptors.add(CookieManager(cookieJar));
    _cookieJar = cookieJar;
    _dio = dio;
  }

  static String _prepareUrl(String url) {
    if (url.endsWith('/')) {
      return url.substring(0, url.length - 2);
    }
    return url;
  }

  Future<About> about() async {
    var res = await _dio.get('$siteUrl/about');
    var jsonMap = res.data['about'];
    return About.fromJson(jsonMap);
  }

  Future<String> csrf() async {
    var res = await _dio.get('$siteUrl/session/csrf',
        options: Options(headers: {
          'X-CSRF-Token': 'undefined',
          'Referer': siteUrl,
        }));
    return res.data['csrf'];
  }

  Future<User> login(String username, String password) async {
    var csrfToken = await csrf();
    var res = await _dio.post('$siteUrl/session',
        options: Options(
          headers: {
            'Origin': siteUrl,
            'Referer': siteUrl,
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

  Future<List<Topic>> topics({
    bool latest = true,
    bool top = false,
    int? page,
  }) async {
    var result;

    if (latest) {
      var res = await _dio.get('$siteUrl/latest');
      List list = res.data['topic_list']['topics'];
      result = list.map((map) => Topic.fromJson(map)).toList();
    }
    // TODO: More
    return result;
  }
}

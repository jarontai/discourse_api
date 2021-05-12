import 'dart:math';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:html2md/html2md.dart' as h2m;

import 'models/models.dart';

part 'api/topic.dart';
part 'api/post.dart';

const kStatusChannel = '/__status';
const kLatestChannel = '/latest';

class DiscourseApiClient {
  static DiscourseApiClient? _singleton;

  static const topicPageSize = 30;
  static const postPageSize = 20;
  static const searchPageSize = 50;

  final String siteUrl;
  final String? cdnUrl;
  late final Dio _dio;

  String? _csrfToken;
  late final String _clientId;
  int _pollCount = 0;
  int _latestId = -1;

  factory DiscourseApiClient.single(String siteUrl,
      {String? cookieDir, String? cdnUrl}) {
    _singleton ??=
        DiscourseApiClient(siteUrl, cookieDir: cookieDir, cdnUrl: cdnUrl);
    return _singleton!;
  }

  DiscourseApiClient(String siteUrl, {String? cookieDir, this.cdnUrl})
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

    _clientId = _buildClientId();
    _csrf();
  }

  static String _buildClientId() {
    var random = Random();
    return random.nextDouble().toStringAsFixed(20).substring(2, 15) +
        random.nextDouble().toStringAsFixed(20).substring(2, 15);
  }

  static String _prepareUrl(String url) {
    if (url.endsWith('/')) {
      return url.substring(0, url.length - 2);
    }
    return url;
  }

  Future<String> _csrf({bool refresh = false}) async {
    if (_csrfToken == null || refresh) {
      var res = await _dio.get('$siteUrl/session/csrf',
          options: Options(headers: {
            'X-CSRF-Token': 'undefined',
            'Referer': siteUrl,
          }));
      _csrfToken = res.data['csrf'];
    }
    return _csrfToken!;
  }

  Future<Options> _csrfOptions({bool refresh = false}) async {
    var csrfToken = await _csrf(refresh: refresh);
    var options = Options(
      headers: {
        'x-csrf-token': csrfToken,
      },
    );
    return options;
  }

  PollMessage _buildPollMessage(Map<String, dynamic> json) {
    var result = PollMessage.fromJson(json);
    var data = json['data'] ?? {};
    if (result.channel == kStatusChannel && data[kLatestChannel] >= 0) {
      result = result.copyWith(
        latestId: data[kLatestChannel],
      );
    }
    return result;
  }

  Future<About> about() async {
    var res = await _dio.get('$siteUrl/about');
    var jsonMap = res.data['about'];
    return About.fromJson(jsonMap);
  }

  Future<User> login(String username, String password) async {
    var csrfToken = await _csrf(refresh: true);
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

  Future<bool> pollLatest({bool check = true}) async {
    if (check && _latestId < 0) {
      await pollLatest(check: false);
    }

    _pollCount++;
    var data = {
      '/latest': _latestId,
      '__seq': _pollCount,
    };
    var res = await _dio.post('$siteUrl/message-bus/$_clientId/poll?dlp=t',
        options: Options(), data: data);

    var result = false;
    if (res.data is List && res.data.length > 0) {
      var pollMessage = _buildPollMessage(res.data[0]);
      if (pollMessage.latestId > _latestId) {
        _latestId = pollMessage.latestId;
        result = true;
      }
    }

    return result;
  }

  Future<SearchResult> search(String q, {int page = 0}) async {
    var options = await _csrfOptions();
    var res = await _dio.get(
      '$siteUrl/search',
      options: options,
      queryParameters: {
        'q': q,
      },
    );

    List postList = res.data['posts'];
    List topicList = res.data['topics'];
    var searchPosts = postList.map((e) => SearchPost.fromJson(e)).toList();
    var searchTopics = topicList.map((e) => SearchTopic.fromJson(e)).toList();
    return SearchResult(posts: searchPosts, topics: searchTopics);
  }
}

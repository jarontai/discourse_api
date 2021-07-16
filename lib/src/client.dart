import 'dart:convert';
import 'dart:math';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:discourse_api/discourse_api.dart';
import 'package:discourse_api/src/models/user_action.dart';
import 'package:html2md/html2md.dart' as html2md;

import 'models/models.dart';

part 'api/topic.dart';
part 'api/post.dart';
part 'api/user.dart';

const kStatusChannel = '/__status';
const kLatestChannel = '/latest';

typedef HttpErrorHandler = void Function(
    int? statusCode, String message, String path);

HttpErrorHandler? _errorHandler;

class _CustomInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // print('DIO HTTP ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    _errorHandler?.call(
        err.response?.statusCode, err.message, err.requestOptions.path);
    return super.onError(err, handler);
  }
}

class DiscourseApiClient {
  static DiscourseApiClient? _singleton;

  static const topicPageSize = 30;
  static const postPageSize = 20;
  static const searchPageSize = 50;

  final String siteUrl;
  final String? cdnUrl;
  late final Dio _dio;

  String? _cookie;
  String? _csrfToken;
  late final String _clientId;
  int _pollCount = 0;
  int _latestId = -1;

  factory DiscourseApiClient.single(String siteUrl,
      {String? cookieDir,
      String? cdnUrl,
      String? proxyAddress,
      int timeout = 10}) {
    _singleton ??= DiscourseApiClient(siteUrl,
        cookieDir: cookieDir,
        cdnUrl: cdnUrl,
        proxyAddress: proxyAddress,
        timeout: timeout);
    return _singleton!;
  }

  DiscourseApiClient(String siteUrl,
      {String? cookieDir, this.cdnUrl, String? proxyAddress, int timeout = 10})
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
    dio.options = BaseOptions(
      connectTimeout: timeout * 1000,
      receiveTimeout: timeout * 1000,
      headers: {
        'Origin': siteUrl,
        'Referer': siteUrl,
        'x-requested-with': 'XMLHttpRequest',
        Headers.acceptHeader: Headers.jsonContentType,
      },
    );
    dio.interceptors.add(CookieManager(cookieJar));
    dio.interceptors.add(_CustomInterceptor());
    _dio = dio;

    if (proxyAddress != null && proxyAddress.isNotEmpty) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.findProxy = (uri) => 'PROXY $proxyAddress;';
        client.badCertificateCallback = (_, __, ___) => true;
      };
    }

    _clientId = _buildClientId();
  }

  void setHttpErrorHandle(HttpErrorHandler handler) {
    _errorHandler = handler;
  }

  static String _buildClientId() {
    var random = Random();
    return random.nextDouble().toStringAsFixed(20).substring(2, 15) +
        random.nextDouble().toStringAsFixed(20).substring(2, 15);
  }

  static String _prepareUrl(String url) {
    if (url.endsWith('/')) {
      return url.substring(0, url.length - 1);
    }
    return url;
  }

  static String genAvatar(String avatarTemplate,
      {int size = 120, String? cdn}) {
    var result = avatarTemplate.replaceFirst('{size}', '$size');
    if (cdn != null && !avatarTemplate.startsWith('http')) {
      result = cdn + result;
    }
    return result;
  }

  Future<String> _csrf({bool refresh = false, bool takeCookie = false}) async {
    if (_csrfToken == null || refresh) {
      var res = await _dio.get('$siteUrl/session/csrf',
          options: Options(headers: {
            'Referer': siteUrl,
          }));
      _csrfToken = res.data['csrf'];

      if (takeCookie) {
        _cookie = res.headers['set-cookie']!.first;
      }
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

  Map<String, String> _apiSignMap() {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final nonce = DateTime.now().millisecond;
    final signKey = 'dc_di';
    return {
      'ts': ts.toString(),
      'nonce': nonce.toString(),
      'sign': md5.convert(utf8.encode('$signKey$nonce$ts$signKey')).toString(),
    };
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
    var res = await _dio.get('$siteUrl/about.json');
    var jsonMap = res.data['about'];
    return About.fromJson(jsonMap);
  }

  Future<List<Category>> categories() async {
    var res = await _dio.get('$siteUrl/categories.json');
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

  Future<PageModel<SearchResult>> search(String token,
      {int page = 1,
      String? categorySlug,
      DateTime? startDate,
      DateTime? endDate}) async {
    var options = await _csrfOptions();
    var tokens = [
      token,
      if (categorySlug != null && categorySlug.isNotEmpty) '#$categorySlug',
      if (startDate != null)
        'after:${startDate.toIso8601String().substring(0, 10)}',
      if (endDate != null)
        'before:${(endDate.toIso8601String().substring(0, 10))}',
    ];

    var res = await _dio.get(
      '$siteUrl/search.json',
      options: options,
      queryParameters: {
        'q': tokens.join(' '),
        if (page > 1) 'page': page,
      },
    );

    var data = <SearchResult>[];

    if (res.data['posts'] != null && res.data['topics'] != null) {
      List postList = res.data['posts'];
      List topicList = res.data['topics'];
      var searchPosts = postList.map((e) {
        var data = SearchPost.fromJson(e);
        if (cdnUrl != null) {
          data = data.copyWith(
            avatar:
                DiscourseApiClient.genAvatar(data.avatarTemplate, cdn: cdnUrl),
          );
        }
        return data;
      }).toList();
      var searchTopics = topicList.map((e) {
        var data = SearchTopic.fromJson(e);
        return data;
      }).toList();

      assert(searchTopics.length == searchPosts.length);

      for (var index = 0; index < searchPosts.length; index++) {
        data.add(SearchResult(
          post: searchPosts[index],
          topic: searchTopics[index],
        ));
      }
    }

    return PageModel(data: data, page: page, pageSize: searchPageSize);
  }
}

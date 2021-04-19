import 'package:dio/dio.dart';

import 'models/models.dart';

class DiscourseApiClient {
  final String siteUrl;
  final Dio _dio = Dio();

  DiscourseApiClient(String siteUrl) : siteUrl = _prepareUrl(siteUrl);

  static String _prepareUrl(String url) {
    if (url.endsWith('/')) {
      return url.substring(0, url.length - 2);
    }
    return url;
  }

  Future<About> about() async {
    var response = await _dio.get('$siteUrl/about.json');
    var jsonMap = response.data['about'];
    return About.fromMap(jsonMap);
  }
}

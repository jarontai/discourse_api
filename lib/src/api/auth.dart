part of '../client.dart';

extension AuthClient on DiscourseApiClient {
  Future<User> login(String username, String password) async {
    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');
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

  Future<void> logout(String username) async {
    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');
    await _dio.delete(
      '$siteUrl/session/$username',
      options: Options(
        headers: {
          'x-csrf-token': csrfToken,
        },
        contentType: Headers.formUrlEncodedContentType,
      ),
    );
  }

  Future<bool> checkLogin() async {
    var login = false;
    try {
      await _dio.get(
        '$siteUrl/notifications.json',
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );
      login = true;
    } on DioError catch (_) {
      login = false;
    }
    return login;
  }
}

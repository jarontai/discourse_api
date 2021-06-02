part of '../client.dart';

extension UserClient on DiscourseApiClient {
  User _buildUser(dynamic json) {
    var user = User.fromJson(json);
    if (cdnUrl != null) {
      user = user.copyWith(
        avatar: DiscourseApiClient.genAvatar(user.avatarTemplate,
            size: 120, cdn: cdnUrl),
      );
    }
    return user;
  }

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
    return _buildUser(jsonMap);
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
        '$siteUrl/notifications.json?recent=1&limit=1',
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            validateStatus: (code) {
              return code != null && code < 500;
            }),
      );
      login = true;
    } catch (error) {
      login = false;
    }
    return login;
  }

  Future<User> userInfo(String username) async {
    var res = await _dio.get('$siteUrl/u/$username.json');
    var jsonMap = res.data['user'];
    return _buildUser(jsonMap);
  }

  Future<String> OAuth({String provider = 'github'}) async {
    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');
    var res = await _dio.post(
      '$siteUrl/auth/$provider',
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
      data: {
        'authenticity_token': csrfToken,
      },
    );

    var result;
    if (res.statusCode == 302) {
      result = res.headers.value('location');
    }
    return result ?? '';
  }

  // https://www.dart-china.org/user_actions.json?offset=0&username=jarontai&filter=4,5&no_results_help_key=user_activity.no_default

  // Future<List<UserAction>> userActions(String username) {
  //   //
  //   return null;
  // }
}

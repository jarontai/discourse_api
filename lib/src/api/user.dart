part of '../client.dart';

extension UserClient on DiscourseApiClient {
  User _buildUser(dynamic json) {
    var user = User.fromJson(json);
    if (cdnUrl != null) {
      user = user.copyWith(
        avatar: DiscourseApiClient.genAvatar(user.avatarTemplate, cdn: cdnUrl),
      );
    }
    return user;
  }

  Future<User?> login(String username, String password) async {
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
    if (jsonMap == null) {
      return null;
    }
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

  Future<bool> register(String email, String username, String password) async {
    var signMap = _apiSignMap();
    var res = await _dio.post(
      '${siteUrl.replaceFirst('https', 'http')}:9080/user',
      options:
          Options(contentType: Headers.jsonContentType, headers: {...signMap}),
      data: {
        'username': username,
        'email': email,
        'password': password,
      },
    );
    var body = res.data.toString();
    var data = json.decode(body);
    if (data['success'] != null && data['success'] == true) {
      return true;
    }
    return false;
  }

  Future<bool> checkEmail(String email) async {
    var res = await _dio.get(
      '$siteUrl/u/check_email.json',
      options: Options(
        contentType: Headers.jsonContentType,
      ),
      queryParameters: {
        'email': email,
      },
    );
    var success = res.data['success'];
    if (success != null && success.toString().toUpperCase() == 'OK') {
      return true;
    }
    return false;
  }

  Future<bool> checkUsername(String username) async {
    var res = await _dio.get(
      '$siteUrl/u/check_username.json',
      options: Options(
        contentType: Headers.jsonContentType,
      ),
      queryParameters: {
        'username': username,
      },
    );
    var success = res.data['success'];
    var available = res.data['available'];
    if (success != null && success.toString().toUpperCase() == 'OK') {
      return true;
    }
    if (available != null && available == true) {
      return true;
    }
    return false;
  }

  Future<int?> uploads(int userId, List<int> bytes,
      {String type = 'avatar'}) async {
    final formData = FormData.fromMap({
      'type': type,
      'user_id': userId,
      'synchronous': true,
      'files[]': MultipartFile.fromBytes(bytes, filename: '${userId}_avatar'),
    });

    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');

    final res = await _dio.post('$siteUrl/uploads.json?client_id=$_clientId',
        data: formData,
        options: Options(
          headers: {
            'x-csrf-token': csrfToken,
          },
        ));
    return res.data['id'];
  }

  Future<bool> updateAvatar(String username, int uploadId) async {
    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');

    final res =
        await _dio.put('$siteUrl/u/$username/preferences/avatar/pick.json',
            data: {
              'type': 'custom',
              'upload_id': uploadId,
            },
            options: Options(
              headers: {
                'x-csrf-token': csrfToken,
              },
            ));
    return res.statusCode == 200;
  }

  Future<bool> updateUserInfo(String username, {String? bio}) async {
    var csrfToken = await _csrf(refresh: true);
    assert(csrfToken.length >= 80, 'csrf token error');

    final res = await _dio.put('$siteUrl/u/$username.json',
        data: {
          if (bio != null) 'bio_raw': bio,
        },
        options: Options(
          headers: {
            'x-csrf-token': csrfToken,
          },
        ));
    return res.statusCode == 200;
  }
}

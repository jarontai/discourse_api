import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart' as shelf_router;

class ApiServer {
  ApiServer({
    required this.siteUrl,
    required this.apiKey,
    this.apiUsername = 'system',
    required this.signKey,
  });

  final String siteUrl;
  final String apiKey;
  final String apiUsername;
  final String signKey;

  Future<bool> start(int port) async {
    var result = true;

    final _router = shelf_router.Router()..post('/user', _userCreateHandler);
    final cascade = Cascade().add(_router);
    final pipeline =
        Pipeline().addMiddleware(logRequests()).addHandler(cascade.handler);
    final server =
        await shelf_io.serve(pipeline, InternetAddress.anyIPv4, port);

    print('Serving at http://${server.address.host}:${server.port}');

    return result;
  }

  bool checkSign(Map<String, String> headers) {
    var sign = headers['sign'];
    var ts = headers['ts'];
    var nonce = headers['nonce'];
    if (sign == null || ts == null || nonce == null) {
      return false;
    }

    var now = DateTime.now();
    var time = DateTime.fromMillisecondsSinceEpoch(int.parse(ts));
    var diff = now.difference(time);
    if (time.isAfter(now) || diff.inSeconds > 30) {
      return false;
    }

    var mySign =
        md5.convert(utf8.encode('$signKey$nonce$ts$signKey')).toString();
    if (mySign == sign) {
      return true;
    } else {
      return false;
    }
  }

  Future<Response> _userCreateHandler(Request request) async {
    if (checkSign(request.headers)) {
    } else {
      return Response.ok(json.encode({'sign': false}));
    }

    var body = request.read();
    var list = <int>[];
    await for (var data in body) {
      list.addAll(data);
    }
    list = Uint8List.fromList(list);
    final jsonStr = utf8.decode(list);
    final jsonData = json.decode(jsonStr);

    final email = jsonData['email'] ?? '';
    final username = jsonData['username'] ?? '';
    final password = jsonData['password'] ?? '';
    // final name = jsonData['name'];
    // final active = jsonData['active'];
    // final approved = jsonData['approved'];

    var url = Uri.parse('$siteUrl/users.json');
    var res = await http.post(
      url,
      headers: {
        'Content-type': 'application/json; charset=utf-8',
        'Api-Key': apiKey,
        'Api-Username': apiUsername,
      },
      body: json.encode({
        'name': username,
        'username': username,
        'email': email,
        'password': password,
        'active': true,
        'approved': true,
      }),
    );

    if (res.statusCode == 200) {
      return Response.ok(json.encode({'success': true}));
    } else {
      return Response.ok(json.encode({'success': false}));
    }
  }
}

// main(List<String> args) async {
//   dot.load();
//   final port = int.parse(dot.env['port'] ?? '9080');
//   final siteUrl = dot.env['site_url'];
//   final apiKey = dot.env['api_key'];
//   final apiUsername = dot.env['api_Username'] ?? 'system';
//   assert(siteUrl != null);
//   assert(apiKey != null);

//   final server = ApiServer(
//       siteUrl: 'https://www.dart-china.org',
//       apiKey: apiKey!,
//       apiUsername: apiUsername);
//   await server.start(port);
// }

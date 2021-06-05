import 'package:dotenv/dotenv.dart' as dot;

import 'package:api_server/server.dart';

void main(List<String> arguments) async {
  dot.load();
  final port = int.parse(dot.env['port'] ?? '9080');
  final siteUrl = dot.env['site_url'];
  final apiKey = dot.env['api_key'];
  final apiUsername = dot.env['api_Username'] ?? 'system';
  final signKey = dot.env['sign_key'];

  assert(siteUrl != null);
  assert(apiKey != null);

  final server = ApiServer(
      signKey: signKey ?? 'dc_di',
      siteUrl: 'https://www.dart-china.org',
      apiKey: apiKey!,
      apiUsername: apiUsername);
  await server.start(port);
}

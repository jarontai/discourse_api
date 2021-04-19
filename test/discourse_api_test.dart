import 'package:discourse_api/discourse_api.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' as dot_env;

void main() {
  group('Api Test -', () {
    late DiscourseApiClient client;

    setUp(() {
      client = DiscourseApiClient('https://www.dart-china.org');
    });

    test('About', () async {
      var result = await client.about();
      expect(result.description, isNotEmpty);
      expect(result.title, isNotEmpty);
      expect(result.version, isNotEmpty);
    });

    test('Csrf', () async {
      var result = await client.csrf();
      expect(result.length, greaterThan(80));
    });

    test('Login', () async {
      dot_env.load();

      var username = dot_env.env['username'];
      var password = dot_env.env['password'];

      var result = await client.login(username!, password!);
      expect(result.username, username);
    });
  });
}

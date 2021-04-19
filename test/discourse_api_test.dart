import 'package:discourse_api/discourse_api.dart';
import 'package:test/test.dart';

void main() {
  group('Api Test', () {
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
  });
}

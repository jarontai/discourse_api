import 'package:discourse_api/discourse_api.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' as dot_env;

void main() {
  group('Api Test -', () {
    late DiscourseApiClient client;

    setUp(() {
      dot_env.load();
      var siteUrl = dot_env.env['siteurl']!;
      client = DiscourseApiClient(siteUrl);
    });

    test('About', () async {
      var result = await client.about();
      expect(result.description, isNotEmpty);
      expect(result.title, isNotEmpty);
      expect(result.version, isNotEmpty);
    });

    test('Login', () async {
      var username = dot_env.env['username'];
      var password = dot_env.env['password'];

      var result = await client.login(username!, password!);
      expect(result.username, username);
    });

    test('Categories', () async {
      var result = await client.categories();
      expect(result.length, greaterThan(1));
      expect(result.last.name, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.topicCount, greaterThanOrEqualTo(0));
      expect(result.first.slug, isNotEmpty);
    });

    test('Topics / Posts', () async {
      var result = await client.topics(latest: true);
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.postsCount, greaterThanOrEqualTo(0));
      expect(result.first.slug, isNotEmpty);

      var topic = await client.topic(result.first.id);
      expect(topic.title, isNotEmpty);
      expect(topic.posts, isNotEmpty);
      expect(topic.postIds, isNotEmpty);

      var posts = await client.topicPosts(topic);
      expect(posts.length, topic.posts!.length);
      expect(posts.first.id, equals(topic.postIds!.first));
    });
  });
}

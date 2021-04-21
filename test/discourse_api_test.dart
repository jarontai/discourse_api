import 'dart:math';

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

    test('Categories', () async {
      var result = await client.categories();
      expect(result.length, greaterThan(1));
      expect(result.last.name, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.topicCount, greaterThanOrEqualTo(0));
      expect(result.first.slug, isNotEmpty);
    });

    test('Topics / Posts', () async {
      var result = await client.topicList(latest: true);
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.postsCount, greaterThanOrEqualTo(0));
      expect(result.first.slug, isNotEmpty);

      var topic = await client.topicDetail(result.first.id);
      expect(topic.title, isNotEmpty);
      expect(topic.posts, isNotEmpty);
      expect(topic.postIds, isNotEmpty);

      var posts = await client.topicPosts(topic);
      expect(posts.length, topic.posts!.length);
      expect(posts.first.id, equals(topic.postIds!.first));
    });

    test('Topic Create / Edit / Delete', () async {
      var username = dot_env.env['username'];
      var password = dot_env.env['password'];

      var user = await client.login(username!, password!);
      expect(user.username, username);

      var categories = await client.categories();
      var staffCategory =
          categories.firstWhere((element) => element.slug == 'staff');
      expect(staffCategory, isNotNull);
      expect(staffCategory.id, isNotNull);

      var categoryId = staffCategory.id;
      var topicId = await client.topicCreate(
          'Test Topic Create', 'Test Topic Create',
          categoryId: categoryId);
      expect(topicId, isNotNull);

      var topic = await client.topicDetail(topicId);
      expect(topic, isNotNull);
      expect(topic.id, equals(topicId));
      expect(topic.title, equals('Test Topic Create'));

      var updateTopicId =
          await client.topicUpdate(topicId, 'Test Topic Create!!!');
      expect(topicId, equals(updateTopicId));

      await client.topicDelete(updateTopicId);
    });
  });
}

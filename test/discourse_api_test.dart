import 'dart:io';

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
      var result = (await client.topicList()).data;
      var firstTopic = await client.topicDetail(result.first.id);

      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.postsCount, greaterThanOrEqualTo(0));
      expect(result.first.categoryId, isNotNaN);
      expect(result.first.excerpt, isNotEmpty);

      result = (await client.topicList(page: 1)).data;
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);

      result =
          (await client.topicList(categoryId: 3, categorySlug: 'meta')).data;
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);

      var topic = await client.topicDetail(result.first.id);
      expect(topic.title, isNotEmpty);
      expect(topic.posts, isNotEmpty);
      expect(topic.postIds, isNotEmpty);

      var posts = (await client.topicPosts(firstTopic)).data;
      expect(posts.length, lessThanOrEqualTo(firstTopic.posts!.length));
      expect(posts.first.id, equals(firstTopic.postIds!.first));
      expect(posts.first.avatarTemplate, isNotEmpty);
      expect(posts.first.createdAt, isNotEmpty);

      posts = (await client.topicPosts(firstTopic, page: 1)).data;
      expect(posts.length, lessThanOrEqualTo(firstTopic.posts!.length));
    });

    test('Topic & Post Create/Update/Delete', () async {
      var username = dot_env.env['username'];
      var password = dot_env.env['password'];

      var user = await client.login(username!, password!);
      expect(user!.username, username);

      var login = await client.checkLogin();
      expect(login, true);

      user = await client.userInfo(user.username);
      expect(user.username, username);

      var categories = await client.categories();
      var staffCategory =
          categories.firstWhere((element) => element.slug == 'staff');
      expect(staffCategory, isNotNull);
      expect(staffCategory.id, isNotNull);

      var categoryId = staffCategory.id;
      var topic = await client.topicCreate(
          'Test Topic Create', 'Test Topic Create',
          categoryId: categoryId);
      expect(topic, isNotNull);
      expect(topic.id, isNotNull);
      expect(topic.title, equals('Test Topic Create'));

      var topicPost = topic.posts!.first;
      expect(topicPost, isNotNull);
      expect(topicPost.topicId, equals(topic.id));

      var post = await client.postCreate(
          topic.id, 'This is a post of topic ${topic.id}');
      expect(post, isNotNull);
      expect(post.topicId, topic.id);
      expect(post.cooked, isNotEmpty);

      var updatedPost = await client.postUpdate(
          topic.id, post.id, 'This is a post of topic ${topic.id}!!!');
      expect(updatedPost, isNotNull);
      expect(updatedPost.id, equals(post.id));
      expect(updatedPost.cooked, isNot(equals(post.cooked)));

      await client.postDelete(post.id);

      var updateTopicId =
          await client.topicUpdate(topic.id, 'Test Topic Create!!!');
      expect(topic.id, equals(updateTopicId));

      await client.topicDelete(updateTopicId);

      await client.logout(username);
    });

    test('Poll', () async {
      var result = await client.pollLatest();
      expect(result, equals(false));
      result = await client.pollLatest();
      expect(result, equals(false));
      result = await client.pollLatest();
      expect(result, equals(false));
    });

    test('Search', () async {
      var result = (await client.search('flutter',
              endDate: DateTime.now(), categorySlug: 'question'))
          .data;
      expect(result, isNotNull);
      expect(result, isNotEmpty);
      expect(result.first.post, isNotNull);
      expect(result.first.topic, isNotNull);
      expect(result.last.post, isNotNull);
      expect(result.last.topic, isNotNull);
    });

    test('Register', () async {
      var result = await client.register('jarotnai', '', '');
      expect(result, isNotNull);
      expect(result, false);

      result = await client.checkEmail('jarontai@126.com');
      expect(result, false);

      result = await client.checkEmail('jarontai1@126.com');
      expect(result, true);

      result = await client.checkUsername('jarontai');
      expect(result, false);

      result = await client.checkUsername('jarontai1');
      expect(result, true);
    });

    test('Uploads', () async {
      var username = dot_env.env['username'];
      var password = dot_env.env['password'];

      var user = await client.login(username!, password!);
      expect(user!.username, username);

      var login = await client.checkLogin();
      expect(login, true);

      var bytes = File('avatar.png').readAsBytesSync();
      var uploadId = await client.uploads(user.id, bytes);
      if (uploadId != null) {
        await client.updateAvatar(user.username, uploadId);
      }
    });
  });
}

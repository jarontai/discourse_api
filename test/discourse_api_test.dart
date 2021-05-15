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
      var result = await client.topicList();
      var firstTopic = await client.topicDetail(result.first.id);

      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);
      expect(result.last.id, greaterThan(0));
      expect(result.last.postsCount, greaterThanOrEqualTo(0));
      expect(result.first.categoryId, isNotNaN);
      expect(result.first.excerpt, isNotEmpty);

      result = await client.topicList(page: 1);
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);

      result = await client.topicList(categoryId: 3, categorySlug: 'meta');
      expect(result.length, greaterThan(1));
      expect(result.last.title, isNotEmpty);

      var topic = await client.topicDetail(result.first.id);
      expect(topic.title, isNotEmpty);
      expect(topic.posts, isNotEmpty);
      expect(topic.postIds, isNotEmpty);

      var posts = await client.topicPosts(firstTopic);
      expect(posts.length, lessThanOrEqualTo(firstTopic.posts!.length));
      expect(posts.first.id, equals(firstTopic.postIds!.first));
      expect(posts.first.avatarTemplate, isNotEmpty);
      expect(posts.first.createdAt, isNotEmpty);

      posts = await client.topicPosts(firstTopic, page: 1);
      expect(posts.length, lessThanOrEqualTo(firstTopic.posts!.length));
    });

    test('Topic & Post Create/Update/Delete', () async {
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
      var result = await client.search('flutter');
      expect(result.posts, isNotNull);
      expect(result.posts, isNotEmpty);
      expect(result.posts.last.blurb, isNotEmpty);
      expect(result.topics, isNotNull);
      expect(result.topics, isNotEmpty);
      expect(result.topics.last.title, isNotEmpty);
    });
  });
}

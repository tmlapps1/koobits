import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:koobits/app/views/home/home_view.dart';
import 'package:koobits/data/model/post.dart';
import 'package:koobits/data/service/posts_service.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/mockito.dart';



import 'package:mockito/mockito.dart';


class MockPostsService extends Mock implements PostService {}

void main() {
  group('PostsService Test', () {
    test('Fetch Posts from Mock Service', () async {
      final mockPostsService = MockPostsService();

      when(mockPostsService.fetchPosts()).thenAnswer(
            (_) async => [Post( id: 1, title: 'test', body: 'test', url: '')],
      );

      expect(await mockPostsService.fetchPosts(), isA<List<Post>>());
      expect((await mockPostsService.fetchPosts()).length, 1);
    });
  });
}




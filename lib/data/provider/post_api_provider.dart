
import 'package:get/get.dart';

import '../model/post.dart';


class PostsApiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<List<Post>> getPosts() async {
    final response = await get('/photos');
    if (response.status.hasError) {
      throw Exception('Error fetching posts: ${response.statusText}');
    } else {
      return (response.body as List).map((json) => Post.fromJson(json)).toList();
    }
  }
}


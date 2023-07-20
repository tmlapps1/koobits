import '../provider/post_api_provider.dart';
import '../model/post.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {
  var client = http.Client();

  Future<List<Post>> fetchPosts() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return postFromJson(jsonString);
    } else {
      // throw exception if response status is not OK
      throw Exception('Failed to load posts from API');
    }
  }

  List<Post> postFromJson(String jsonString) {
    final data = json.decode(jsonString);
    return List<Post>.from(data.map((item) => Post.fromJson(item)));
  }
}

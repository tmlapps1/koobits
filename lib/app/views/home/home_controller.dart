
import 'package:get/get.dart';

import '../../../data/model/post.dart';
import '../../../data/service/posts_service.dart';


class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = List<Post>.empty(growable: true).obs;
  var filteredPostList = List<Post>.empty(growable: true).obs;

  final PostService _postService;

  PostController({required PostService postService})
      : _postService = postService;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var posts = await _postService.fetchPosts();
      if (posts != null) {
        postList.assignAll(posts);
        filteredPostList.assignAll(posts);
      }
    } finally {
      isLoading(false);
    }
  }

  void filterPosts(String query) {
    var filteredPosts = postList.where((post) => post.title.toLowerCase().contains(query.toLowerCase())).toList();
    filteredPostList.assignAll(filteredPosts);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koobits/app/themes/app_color.dart';
import '../../../data/service/posts_service.dart';
import '../../themes/theme.dart';
import 'home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final PostController postController =
      Get.put(PostController(postService: PostService()));

  Home({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: AppColor.allBlack,
      appBar: AppBar(
        backgroundColor: AppColor.allBlack,
        title: const Text(
          "KooBit Sample",
          style: AppTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                postController.filterPosts(value);
              },
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: AppTheme.headline4,
                // change label color
                filled: true,
                fillColor: AppColor.darkGray,
                // change background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide:
                      const BorderSide(color: AppColor.darkGray), // change border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(color: AppColor.darkGray),
                ),
              ),
              style: const TextStyle(color: Colors.black), // change text color
            ),
          ),
          Expanded(
            child: Obx(
              () {
                if (postController.isLoading.isTrue) {
                  return const Center(child: CircularProgressIndicator());
                } else if (postController.filteredPostList.isEmpty) {
                  return const Center(child: Text("No posts found"));
                } else {
                  return ListView.builder(
                    itemCount: postController.filteredPostList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: AppColor.darkGray,
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                postController.filteredPostList[index].title,
                                style: AppTheme.headline4,
                              ),
                              const SizedBox(height: 15),
                              Text(
                                postController.filteredPostList[index].body,
                                style: AppTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

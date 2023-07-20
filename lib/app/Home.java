class Home extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KooBit"),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
            ),
          ),
          Expanded(
            child: Obx(
                  () {
                if (postController.isLoading.isTrue) {
                  return Center(child: CircularProgressIndicator());
                } else if (postController.filteredPostList.isEmpty) {
                  return Center(child: Text("No posts found"));
                } else {
                  return ListView.builder(
                    itemCount: postController.filteredPostList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                postController.filteredPostList[index].title,
                                style: TextStyle(fontSize: 24),
                              ),
                              const SizedBox(height: 15),
                              Text(postController.filteredPostList[index].body),
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
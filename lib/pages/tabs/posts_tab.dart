import 'package:flutter/material.dart';
import '../../model/posts.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/post_widget.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Posts>(
      title: 'Posts',
      onFetch: ApiService.fetchPosts,
      itemBuilder: (context, post, index) {
        return PostWidget(post: post);
      },
    );
  }
}

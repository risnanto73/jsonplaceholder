import 'package:flutter/material.dart';
import '../../model/comments.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/comment_widget.dart';

class CommentsTab extends StatelessWidget {
  const CommentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Comments>(
      title: 'Comments',
      onFetch: ApiService.fetchComments,
      itemBuilder: (context, comment, index) {
        return CommentWidget(comment: comment);
      },
    );
  }
}

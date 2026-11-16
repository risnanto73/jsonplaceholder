import 'package:flutter/material.dart';
import 'tabs/posts_tab.dart';
import 'tabs/comments_tab.dart';
import 'tabs/albums_tab.dart';
import 'tabs/photos_tab.dart';
import 'tabs/todos_tab.dart';
import 'tabs/users_tab.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'JSONPlaceholder API',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 1,
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(icon: Icon(Icons.article_outlined), text: 'Posts (100)'),
              Tab(icon: Icon(Icons.comment_outlined), text: 'Comments (500)'),
              Tab(icon: Icon(Icons.album_outlined), text: 'Albums (100)'),
              Tab(icon: Icon(Icons.photo_library_outlined), text: 'Photos (5000)'),
              Tab(icon: Icon(Icons.checklist_rtl_outlined), text: 'Todos (200)'),
              Tab(icon: Icon(Icons.people_alt_outlined), text: 'Users (10)'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PostsTab(),
            CommentsTab(),
            AlbumsTab(),
            PhotosTab(),
            TodosTab(),
            UsersTab(),
          ],
        ),
      ),
    );
  }
}

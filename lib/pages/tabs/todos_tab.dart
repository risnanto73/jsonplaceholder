import 'package:flutter/material.dart';
import '../../model/todos.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/todo_widget.dart';

class TodosTab extends StatelessWidget {
  const TodosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Todos>(
      title: 'Todos',
      onFetch: ApiService.fetchTodos,
      itemBuilder: (context, todo, index) {
        return TodoWidget(todo: todo);
      },
    );
  }
}

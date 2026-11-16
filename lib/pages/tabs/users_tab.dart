import 'package:flutter/material.dart';
import '../../model/users.dart';
import '../../service/api_service.dart';
import '../../widget/async_data_view.dart';
import '../../widget/user_widget.dart';

class UsersTab extends StatelessWidget {
  const UsersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncDataView<Users>(
      title: 'Users',
      onFetch: ApiService.fetchUsers,
      itemBuilder: (context, user, index) {
        return UserWidget(user: user);
      },
    );
  }
}

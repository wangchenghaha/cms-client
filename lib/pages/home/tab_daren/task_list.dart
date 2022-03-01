import 'package:flutter/material.dart';

import 'common/task_item_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('任务列表'),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TaskItemWidget(),
          TaskItemWidget(),
          TaskItemWidget(),
        ],
      ),
    );
  }
}
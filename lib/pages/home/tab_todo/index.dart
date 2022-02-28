import 'package:flutter/material.dart';

import 'todo_list.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('待办'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [TodoList()]
        ),
      ),
    );
  }
}

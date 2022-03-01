import 'package:flutter/material.dart';

import 'todo_list.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [TodoList()]
        ),
      ),
    );
  }
}

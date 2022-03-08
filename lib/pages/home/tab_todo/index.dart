import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'todo_list.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, 
      DeviceOrientation.portraitDown
    ]);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const TodoList()
      ),
    );
  }
}

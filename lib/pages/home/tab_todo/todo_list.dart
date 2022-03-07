import 'package:flutter/material.dart';
import 'package:cms_client/pages/home/tab_todo/todo_list_item_widget.dart';
import 'package:dio/dio.dart';
import './dataList.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List _todoDataList = [];
  _getTotoList() async {
    var url =
        'https://cms-test.bestseller.com.cn/stage-api/product/product/stepNumber';
    Map<String, dynamic> headers = new Map();
    headers['Cookie'] =
        'bsadmin-lang=zh-CN; bsadmin-token=5228a123-5e7f-446c-8395-4f2cc25341f2; bsadmin-uuid=DA00337827';
    Options options = Options(headers: headers);
    var res = await Dio().get(url, options: options);
    if (res.data['code'] == 200) {
      setState(() {
        _todoDataList = res.data['data'].toList();
      });
    }
  }

  @override
  void initState() {
    print('count initState');
    _getTotoList();
  }

  @override
  Widget build(BuildContext context) {
    if (_todoDataList.length != 0) {
      return Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 200,
          child: Image.asset(
          'assets/images/noTodoData.png',
        ),
        ),
      );
    } else {
      return Container(
        child: ListView(
          children:
              _todoDataList.map((item) => TodoListItemWidget(item)).toList(),
        ),
      );
    }
  }
}

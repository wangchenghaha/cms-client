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
  List<DataListItemData> _todoDataList = [];
  _getTotoList() async {
    var url =
        'https://cms-test.bestseller.com.cn/stage-api/product/product/stepNumber';
    Map<String, dynamic> headers = new Map();
    headers['Cookie'] =
        'bsadmin-lang=zh-CN; bsadmin-token=428809b7-f43f-413a-af2b-51ef9ba4e694; bsadmin-uuid=DA00337827';
    Options options = Options(headers: headers);
    var res = await Dio().get(url, options: options);
    if (res.data['code'] == 200) {
      setState(() {
        List _todoDataList = (res.data['data'] as List<dynamic>)
            .map((item) => DataListItemData(
                item['productStepNameCn'],
                item['productStepNameEn'],
                item['productContentProductionStep'],
                item['number']))
            .toList();
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
    _getTotoList();

    return Container(
      child: Column(
        children:
            _todoDataList.map((item) => TodoListItemWidget(item)).toList(),
      ),
    );
  }
}

import 'package:cms_client/pages/home/tab_todo/todo_list_item_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import './dataList.dart';

class TabIndex extends StatefulWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  _TabIndexState createState() => _TabIndexState();
}

class _TabIndexState extends State<TabIndex> {
  List<DataListItemData> _todoDataList;
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
        .map((item) => DataListItemData.fromJson(item))
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('待办'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: _todoDataList.map((item) => TodoListItemWidget(item)).toList(),
        ),
      ),
    );
  }
}

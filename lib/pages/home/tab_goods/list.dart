import 'package:cms_client/pages/home/tab_goods/dataList.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'list_item.dart';

class GoodsList extends StatefulWidget {
  const GoodsList({Key? key}) : super(key: key);

  @override
  State<GoodsList> createState() => _ListState();
}

class _ListState extends State<GoodsList> {
  List dataList = [];
  int current = 1;
  _getList() async {
    var url =
        'https://cms-test.bestseller.com.cn/stage-api/product/product/queryList?style=&styleName=&productYearId=&productSeasonId=&brand=&categoryGroupName=&batchTag=&current=${current}&size=10';
    Map<String, dynamic> headers = new Map();
    headers['Cookie'] =
        'bsadmin-lang=zh-CN; bsadmin-uuid=DA00337827; bsadmin-token=07abdcc8-3f0a-47b8-ba4f-056e1b440f97';
    Options options = Options(headers: headers);
    var res = await Dio().get(url, options: options);
    if (res.data['code'] == 200) {
      setState(() {
        dataList..addAll(res.data['data']['records'].toList());
      });
    }
  }

  void _refresh() async {
    current = 1;
    _getList();
  }

  void _load() async {
    current += 1;
    _getList();
  }

  @override
  void initState() {
    print('count initState');
    _getList();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onRefresh: () async {
        _refresh();
      },
      onLoad: () async {
        _load();
      },
      child: ListView(
        children: [
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: dataList.map((item) => GoodsListItem(item)).toList(),
          ),
        ],
      ),
    );
  }
}

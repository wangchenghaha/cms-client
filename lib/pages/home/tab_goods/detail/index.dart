import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'base_info/index.dart';

class GoodsDetailPage extends StatefulWidget {
  final String styleColorCode;

  const GoodsDetailPage({Key? key, required this.styleColorCode})
      : super(key: key);

  @override
  State<GoodsDetailPage> createState() => _GoodsDetailPageState();
}

class _GoodsDetailPageState extends State<GoodsDetailPage> {
  List topTabsList = [];

  @override
  void initState() {
    // TODO: implement initState
    _getTopTabs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: topTabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('商品详情'),
          bottom: TabBar(
            isScrollable: true,
            // indicator: ColorTabIndicator(Colors.black),//选中标签颜色
            indicatorColor: Colors.black,
            tabs: topTabsList.map((e) => Tab(
              child: Container(
                child: Text( e['remark']),
              )
            
            ,)).toList(),
          ),
        ),
        body: TabBarView(
          children: topTabsList
              .map((e) => DetailContent(remark:e['remark'],))
              .toList(),
        ),
      ),
    );
  }

  _getTopTabs() async {
    const url =
        "https://cms-test.bestseller.com.cn/stage-api/masterdata/dictData/findDictDataListByMore";
    Map<String, dynamic> headers = new Map();
    headers['Cookie'] =
        'bsadmin-lang=zh-CN; bsadmin-uuid=DA00337827; bsadmin-token=07abdcc8-3f0a-47b8-ba4f-056e1b440f97';
    Options options = Options(headers: headers);
    var data = {
      "dictTypeCodes": ["product_content_production_step"]
    };
    var res = await Dio().post(url, data: data, options: options);
    if (res.data['code'] == 200) {
      setState(() {
        topTabsList =
            res.data['data']['product_content_production_step'].toList();
      });
    } else {}
  }
}

class DetailContent extends StatelessWidget {
  final String remark;

  const DetailContent({Key? key, required this.remark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (remark) {
      case '基本信息':
        return BaseInfo();
      default:
        return Container(
          child: Text('default'),
        );
    }
  }
}

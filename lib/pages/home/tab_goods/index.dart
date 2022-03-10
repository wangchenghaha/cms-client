import 'package:cms/pages/home/tab_goods/list.dart';
import 'package:flutter/material.dart';

import 'FilterDrawer.dart';

class TabGoods extends StatefulWidget {
  const TabGoods({Key? key}) : super(key: key);

  @override
  _TabGoodsState createState() => _TabGoodsState();
}

class _TabGoodsState extends State<TabGoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品'),
        elevation: 1,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.filter_alt_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: FilterDrawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: GoodsList(),
      ),
    );
  }
}

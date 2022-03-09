import 'package:cms_client/pages/home/tab_product/list.dart';
import 'package:flutter/material.dart';

import 'FilterDrawer.dart';

class TabProduct extends StatefulWidget {
  const TabProduct({Key? key}) : super(key: key);

  @override
  _TabProductState createState() => _TabProductState();
}

class _TabProductState extends State<TabProduct> {
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
        decoration: BoxDecoration(
          color: Colors.grey[200]
        ),
        child: GoodsList(),
      ),
    );
  }
}
